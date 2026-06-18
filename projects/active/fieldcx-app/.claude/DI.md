# FieldCX — Dependency Injection Rules

## Tool: get_it via ServiceLocator

## File Location
```
lib/core/di/
├── service_locator.dart     # Root — call sl<T>() everywhere
└── modules/
    ├── network_module.dart
    ├── auth_module.dart
    ├── job_module.dart
    └── agent_module.dart    # One module per feature
```

## service_locator.dart
```dart
final sl = GetIt.instance;

Future<void> setupLocator() async {
  await NetworkModule.register(sl);
  await AuthModule.register(sl);
  await JobModule.register(sl);
  await AgentModule.register(sl);
}
```

## Module Pattern
```dart
// lib/core/di/modules/job_module.dart
abstract class JobModule {
  static Future<void> register(GetIt sl) async {
    // DataSources
    sl.registerLazySingleton<JobRemoteDataSource>(
      () => JobRemoteDataSourceImpl(sl()),
    );
    sl.registerLazySingleton<JobLocalDataSource>(
      () => JobLocalDataSourceImpl(sl()),
    );
    // Repository
    sl.registerLazySingleton<JobRepository>(
      () => JobRepositoryImpl(sl(), sl(), sl()),
    );
    // UseCases
    sl.registerFactory(() => GetJobsUseCase(sl()));
    sl.registerFactory(() => GetJobByIdUseCase(sl()));
    sl.registerFactory(() => UpdateJobStatusUseCase(sl()));
  }
}
```

## Riverpod + get_it Bridge
```dart
// UseCase providers — bridge get_it into Riverpod
final getJobsUseCaseProvider = Provider((_) => sl<GetJobsUseCase>());
final getJobByIdUseCaseProvider = Provider((_) => sl<GetJobByIdUseCase>());
```

## Registration Types
| Type                    | When                              |
|-------------------------|-----------------------------------|
| `registerSingleton`     | Boot-time, always ready           |
| `registerLazySingleton` | Created on first access           |
| `registerFactory`       | New instance each call (UseCases) |

## main.dart
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const ProviderScope(child: FieldCXApp()));
}
```

## Rules
- NEVER instantiate classes manually in Views or Notifiers
- All UseCases → `registerFactory` (stateless)
- All Repositories → `registerLazySingleton`
- `ProviderScope` wraps entire app at root
- One module file per feature — never one giant locator file
