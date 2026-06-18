# FieldCX — Error Handling Rules

## Philosophy
Errors are typed values, not flying exceptions.
Use `Either<AppFailure, T>` from `dartz` across all layers.

## File Locations
```
lib/core/errors/
├── app_failure.dart      # All failure types
├── app_exception.dart    # DataSource-level exceptions
└── app_logger.dart       # AppLogger (replaces print)
```

## app_failure.dart
```dart
abstract class AppFailure {
  final String message;
  const AppFailure(this.message);
}

class ServerFailure   extends AppFailure {
  final int statusCode;
  const ServerFailure(this.statusCode) : super('Server error ($statusCode)');
}
class NetworkFailure  extends AppFailure {
  const NetworkFailure() : super('No internet connection');
}
class CacheFailure    extends AppFailure {
  const CacheFailure() : super('Local data unavailable');
}
class AuthFailure     extends AppFailure {
  const AuthFailure() : super('Authentication failed');
}
class NotFoundFailure extends AppFailure {
  const NotFoundFailure() : super('Resource not found');
}
class ValidationFailure extends AppFailure {
  const ValidationFailure(super.message);
}
```

## app_exception.dart (DataSource throws these)
```dart
class ServerException   implements Exception {
  final int statusCode;
  const ServerException(this.statusCode);
}
class CacheException    implements Exception {}
class NetworkException  implements Exception {}
```

## Error Flow
```
DataSource   → throws AppException
Repository   → catches → returns Left(AppFailure)
UseCase      → passes Either through
ViewModel    → result.fold(onFailure, onSuccess)
View         → reads error state → shows AppErrorWidget
```

## ViewModel fold
```dart
final result = await _useCase();
result.fold(
  (failure) => throw failure,   // Riverpod surfaces as error state
  (data)    => return data,
);
```

## app_logger.dart
```dart
abstract class AppLogger {
  static void debug(String msg)   => debugPrint('[DEBUG] $msg');
  static void info(String msg)    => debugPrint('[INFO]  $msg');
  static void warning(String msg) => debugPrint('[WARN]  $msg');
  static void error(String msg, [Object? e]) {
    debugPrint('[ERROR] $msg');
    if (e != null) debugPrint('  → $e');
  }
}
```

## Rules
- NEVER `throw` from Repository or ViewModel
- NEVER `print()` — always `AppLogger`
- NEVER show raw exception messages to user
- `AppErrorWidget` uses `AppColors.error` — never hardcoded red
- Failures must have descriptive messages — not just "Error"
