# FieldCX — Naming Conventions

## Files: snake_case always
```
job_list_screen.dart    ✅
JobListScreen.dart      ❌
```

## Classes: PascalCase always
```dart
class JobListScreen {}  ✅
```

## Layer Suffix Rules (STRICT)
| Type              | Suffix           | Example                     |
|-------------------|------------------|-----------------------------|
| Screen            | `Screen`         | `JobListScreen`             |
| Notifier          | `Notifier`       | `JobListNotifier`           |
| UseCase           | `UseCase`        | `GetJobsUseCase`            |
| Repository (abs)  | `Repository`     | `JobRepository`             |
| Repository (impl) | `RepositoryImpl` | `JobRepositoryImpl`         |
| DataSource (abs)  | `DataSource`     | `JobRemoteDataSource`       |
| DataSource (impl) | `DataSourceImpl` | `JobRemoteDataSourceImpl`   |
| Entity            | `Entity`         | `JobEntity`                 |
| Model (DTO)       | `Model`          | `JobModel`                  |
| Exception         | `Exception`      | `ServerException`           |
| Failure           | `Failure`        | `ServerFailure`             |
| Module (DI)       | `Module`         | `JobModule`                 |
| Shared Widget     | (descriptive)    | `AppButton`, `AppBadge`     |
| Feature Widget    | (descriptive)    | `JobCard`, `AgentMarker`    |

## Variables: camelCase
```dart
final jobList = <JobEntity>[];   ✅
final job_list = [];             ❌
```

## Private members: prefix _
```dart
List<JobEntity> _jobs = [];      ✅
```

## Constants: camelCase in abstract class
```dart
abstract class AppStrings {
  static const appName = 'FieldCX';   ✅
}
const APP_NAME = 'FieldCX';           ❌
```

## Providers: camelCase + Provider suffix
```dart
final jobListProvider = ...        ✅
final getJobsUseCaseProvider = ... ✅
```

## UseCase naming: verb + noun + UseCase
```dart
GetJobsUseCase         ✅
UpdateJobStatusUseCase ✅
JobsUseCase            ❌  // missing verb
```

## Feature folders: snake_case
```
presentation/views/job_management/  ✅
presentation/views/JobManagement/   ❌
```

## Test files: mirror source + _test.dart
```
lib/domain/usecases/get_jobs_usecase.dart
test/domain/usecases/get_jobs_usecase_test.dart
```
