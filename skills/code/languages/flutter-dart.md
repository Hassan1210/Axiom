# Skill: Flutter / Dart

**Category:** code/languages
**Version:** Flutter 3.x / Dart 3.x
**Owner:** Hassan

---

## Purpose

Build cross-platform mobile applications (iOS + Android) using Flutter with clean architecture patterns.

---

## Architecture Pattern

Axiom standard: **MVVM + Riverpod**

```
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   └── utils/
├── data/
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── presentation/
│   ├── viewmodels/
│   ├── views/
│   └── widgets/
└── main.dart
```

---

## Key Packages

```yaml
dependencies:
  flutter_riverpod: ^2.x       # State management
  go_router: ^13.x             # Navigation
  dio: ^5.x                    # HTTP client
  firebase_core: ^3.x          # Firebase
  firebase_messaging: ^15.x    # FCM push notifications
  shared_preferences: ^2.x     # Local storage
  flutter_gemma: ^0.x          # On-device AI (Gemma)

dev_dependencies:
  flutter_lints: ^4.x
  build_runner: ^2.x
  json_serializable: ^6.x
```

---

## Conventions

- Use `AsyncNotifier` for async state with Riverpod
- All API calls go through Repository layer
- No business logic in widgets
- Named routes via GoRouter
- `freezed` for immutable models

---

## Common Patterns

### Riverpod Provider
```dart
@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  FutureOr<AuthState> build() => AuthState.initial();

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).login(email, password),
    );
  }
}
```

### API Call with Dio
```dart
Future<Response> fetchData(String endpoint) async {
  try {
    return await _dio.get(endpoint);
  } on DioException catch (e) {
    throw ServerException(e.message ?? 'Unknown error');
  }
}
```

---

## Known Issues (iOS)

- LiteRTLM framework requires special handling during App Store submission
- dSYM upload needed for crash reporting
- FCM requires APNs certificate setup in Firebase console

---

## References

- Flutter docs: https://docs.flutter.dev
- Riverpod docs: https://riverpod.dev
- Firebase Flutter: https://firebase.flutter.dev

---

*Axiom OS Skill | Last updated: 2026*
