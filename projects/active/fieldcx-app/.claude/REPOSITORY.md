# FieldCX — Repository Rules

## Layer Structure
```
domain/repositories/       # Abstract contracts (interfaces)
data/repositories/         # Concrete implementations
data/datasources/          # Remote + Local raw calls
```

## Abstract Contract (domain layer)
```dart
// lib/domain/repositories/job_repository.dart
abstract class JobRepository {
  Future<Either<AppFailure, List<JobEntity>>> getJobs();
  Future<Either<AppFailure, JobEntity>> getJobById(String id);
  Future<Either<AppFailure, void>> updateJobStatus(String id, JobStatus status);
}
```

## Implementation (data layer)
```dart
// lib/data/repositories/job_repository_impl.dart
class JobRepositoryImpl implements JobRepository {
  final JobRemoteDataSource _remote;
  final JobLocalDataSource  _local;
  final NetworkInfo         _network;

  const JobRepositoryImpl(this._remote, this._local, this._network);

  @override
  Future<Either<AppFailure, List<JobEntity>>> getJobs() async {
    if (!await _network.isConnected) {
      final cached = await _local.getCachedJobs();
      return Right(cached.map((m) => m.toEntity()).toList());
    }
    try {
      final models = await _remote.fetchJobs();
      await _local.cacheJobs(models);
      return Right(models.map((m) => m.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.statusCode));
    }
  }
}
```

## DataSource Pattern
```dart
// lib/data/datasources/remote/job_remote_datasource.dart
abstract class JobRemoteDataSource {
  Future<List<JobModel>> fetchJobs();
  Future<JobModel> fetchJobById(String id);
}

class JobRemoteDataSourceImpl implements JobRemoteDataSource {
  final ApiClient _client;
  const JobRemoteDataSourceImpl(this._client);

  @override
  Future<List<JobModel>> fetchJobs() async {
    final res = await _client.get(
      ApiEndpoints.jobs,
      fromJson: (data) => (data as List)
          .map((j) => JobModel.fromJson(j))
          .toList(),
    );
    return res.when(success: (d) => d, failure: (f) => throw ServerException());
  }
}
```

## Rules
- Domain repos are ABSTRACT — no implementation details.
- Implementations return `Either<AppFailure, T>` — never throw to ViewModel.
- Always check `NetworkInfo` before hitting remote in impl.
- Datasources throw typed exceptions (`ServerException`, `CacheException`).
- Repos catch datasource exceptions → convert to `Left(Failure)`.
- NEVER call `ApiClient` from a Repository directly — use DataSource.
