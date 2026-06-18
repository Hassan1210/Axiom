# FieldCX — Testing Rules

## Test Folder Structure
```
test/
├── unit/
│   ├── domain/
│   │   └── usecases/          # UseCase tests
│   └── data/
│       └── repositories/      # Repository tests
├── presentation/
│   └── viewmodels/            # ViewModel tests
└── helpers/
    ├── fakes/                 # Fake implementations
    └── fixtures/              # JSON fixture files
```

## What to Test
| Layer       | Test Target                     | Tool         |
|-------------|---------------------------------|--------------|
| UseCase     | Business logic, fold outcomes   | `mocktail`   |
| Repository  | Data orchestration, mapping     | `mocktail`   |
| ViewModel   | State transitions, method calls | `mocktail`   |
| Widget      | Rendering, interactions         | `flutter_test` |

## UseCase Test Pattern
```dart
// test/unit/domain/usecases/get_jobs_usecase_test.dart
void main() {
  late MockJobRepository mockRepo;
  late GetJobsUseCase useCase;

  setUp(() {
    mockRepo = MockJobRepository();
    useCase = GetJobsUseCase(mockRepo);
  });

  group('GetJobsUseCase', () {
    final tJobs = [JobEntity(id: '1', title: 'Fix AC', ...)];

    test('should return jobs from repository on success', () async {
      when(() => mockRepo.getJobs()).thenAnswer((_) async => Right(tJobs));

      final result = await useCase();

      expect(result, Right(tJobs));
      verify(() => mockRepo.getJobs()).called(1);
    });

    test('should return failure when repository fails', () async {
      when(() => mockRepo.getJobs())
          .thenAnswer((_) async => const Left(NetworkFailure()));

      final result = await useCase();

      expect(result, const Left(NetworkFailure()));
    });
  });
}
```

## Mock Setup
```dart
// test/helpers/fakes/mock_job_repository.dart
class MockJobRepository extends Mock implements JobRepository {}
```

## ViewModel Test Pattern
```dart
test('fetchJobs sets jobs state on success', () async {
  when(() => mockGetJobs()).thenAnswer((_) async => Right(tJobs));

  await vm.fetchJobs();

  expect(vm.isLoading, false);
  expect(vm.jobs, tJobs);
  expect(vm.error, null);
});
```

## Rules
- Every UseCase MUST have unit tests.
- Every Repository method MUST have unit tests.
- Coverage target: ≥ 80% for `domain/` and `data/`.
- NO real network calls in tests — always mock.
- Fixtures: JSON files in `test/helpers/fixtures/*.json`.
- Test file names mirror source: `get_jobs_usecase_test.dart`.
- Group related tests under `group('ClassName', () { ... })`.
