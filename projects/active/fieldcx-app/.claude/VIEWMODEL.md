# FieldCX — ViewModel Rules

## What a ViewModel IS
- A Riverpod `Notifier` or `AsyncNotifier` — holds state + logic
- Calls UseCases only — never repositories or datasources directly
- No `BuildContext`, no `Navigator`, no widgets, no UI code

## File Location
```
lib/presentation/viewmodels/
└── <feature>_notifier.dart    # e.g. job_list_notifier.dart
```

## AsyncNotifier — for API-backed screens
```dart
final jobDetailProvider =
    AsyncNotifierProvider.family<JobDetailNotifier, JobEntity, String>(
  JobDetailNotifier.new,
);

class JobDetailNotifier extends FamilyAsyncNotifier<JobEntity, String> {
  @override
  Future<JobEntity> build(String jobId) => _fetch(jobId);

  Future<JobEntity> _fetch(String id) async {
    final result = await ref.read(getJobByIdUseCaseProvider)(id);
    return result.fold((f) => throw f, (job) => job);
  }

  Future<void> markComplete() async {
    final job = state.valueOrNull;
    if (job == null) return;
    final result = await ref.read(updateJobStatusUseCaseProvider)(
      job.id, JobStatus.completed,
    );
    result.fold((f) => throw f, (_) => ref.invalidateSelf());
  }
}
```

## Notifier — for sync / non-async state
```dart
final filterProvider =
    NotifierProvider<FilterNotifier, JobFilter>(FilterNotifier.new);

class FilterNotifier extends Notifier<JobFilter> {
  @override
  JobFilter build() => const JobFilter.all();

  void setStatus(JobStatus status) =>
      state = state.copyWith(status: status);

  void reset() => state = const JobFilter.all();
}
```

## UseCase Provider Pattern
```dart
// Declare alongside notifier or in a providers file
final getJobsUseCaseProvider = Provider(
  (ref) => GetJobsUseCase(ref.read(jobRepositoryProvider)),
);
```

## Rules
- One Notifier per screen/feature
- Notifiers NEVER navigate — expose state, let View react
- NEVER call `ref.watch` inside async methods — use `ref.read`
- Loading/error/data always handled via `AsyncValue` — no manual flags
- No `try/catch` in Notifier — use `Either` from UseCase
- No `print()` — use `AppLogger`
- File max 100 lines — split into multiple notifiers if exceeded
