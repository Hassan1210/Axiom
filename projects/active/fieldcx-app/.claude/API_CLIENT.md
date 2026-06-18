# FieldCX — API Client Rules

## File Locations
```
lib/core/network/
├── api_client.dart        # Dio wrapper — single instance via DI
├── api_endpoints.dart     # All URL strings as constants
├── api_response.dart      # Generic ApiResponse<T> wrapper
├── api_interceptors.dart  # Auth, logging, refresh interceptors
└── network_info.dart      # Connectivity checker
```

## api_client.dart Pattern
```dart
class ApiClient {
  final Dio _dio;
  ApiClient(this._dio);

  Future<ApiResponse<T>> get<T>(String endpoint, {
    Map<String, dynamic>? queryParams,
    required T Function(dynamic) fromJson,
  }) async {
    try {
      final res = await _dio.get(endpoint, queryParameters: queryParams);
      return ApiResponse.success(fromJson(res.data));
    } on DioException catch (e) { return ApiResponse.failure(_mapError(e)); }
  }

  Future<ApiResponse<T>> post<T>(String endpoint, {
    required Map<String, dynamic> body,
    required T Function(dynamic) fromJson,
  }) async {
    try {
      final res = await _dio.post(endpoint, data: body);
      return ApiResponse.success(fromJson(res.data));
    } on DioException catch (e) { return ApiResponse.failure(_mapError(e)); }
  }

  AppFailure _mapError(DioException e) => switch (e.type) {
    DioExceptionType.connectionTimeout => const NetworkFailure(),
    DioExceptionType.receiveTimeout    => const NetworkFailure(),
    _ => ServerFailure(e.response?.statusCode ?? 0),
  };
}
```

## api_endpoints.dart Pattern
```dart
abstract class ApiEndpoints {
  static const _base = '/api/v1';

  // Auth
  static const login    = '$_base/auth/login';
  static const refresh  = '$_base/auth/refresh';

  // Jobs
  static const jobs     = '$_base/jobs';
  static String job(String id) => '$_base/jobs/$id';

  // Field Agents
  static const agents   = '$_base/agents';
  static String agent(String id) => '$_base/agents/$id';
}
```

## api_response.dart Pattern
```dart
@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T data) = _Success;
  const factory ApiResponse.failure(AppFailure failure) = _Failure;
}
```

## api_interceptors.dart (AuthInterceptor snippet)
```dart
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler h) {
    final token = sl<TokenStorage>().accessToken;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    h.next(options);
  }
}
```

## Rules
- `ApiClient` is a singleton registered in `ServiceLocator`.
- NEVER instantiate `Dio` outside `ServiceLocator`.
- All endpoints are strings in `ApiEndpoints` — no inline URLs.
- All API calls return `ApiResponse<T>` — never raw response.
- Network errors mapped to typed `Failure` classes immediately.
