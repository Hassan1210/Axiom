# FieldCX — State Management Rules

## Tool: Riverpod ONLY
> No Provider. No BLoC. No Cubit. No setState in screens. No exceptions.

## Provider Types to Use
| Type                    | When                                      |
|-------------------------|-------------------------------------------|
| `NotifierProvider`      | Sync state with methods                   |
| `AsyncNotifierProvider` | Async data (API calls, loading/error)     |
| `Provider`              | Read-only computed/singleton values       |
| `StateProvider`         | Simple single-value UI state (rare)       |

## AsyncNotifierProvider — Standard Pattern
```dart
// lib/presentation/viewmodels/job_list_notifier.dart
final jobListProvider =
    AsyncNotifierProvider<JobListNotifier, List<JobEntity>>(
  JobListNotifier.new,
);

class JobListNotifier extends AsyncNotifier<List<JobEntity>> {
  @override
  Future<List<JobEntity>> build() => _fetch();

  Future<List<JobEntity>> _fetch() async {
    final result = await ref.read(getJobsUseCaseProvider)();
    return result.fold((f) => throw f, (jobs) => jobs);
  }

  Future<void> refresh() async => ref.invalidateSelf();

  Future<void> updateStatus(String id, JobStatus status) async {
    final result =
        await ref.read(updateJobStatusUseCaseProvider)(id, status);
    result.fold((f) => throw f, (_) => ref.invalidateSelf());
  }
}
```

## View Consumption
```dart
class JobListScreen extends ConsumerWidget {
  const JobListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jobListProvider);
    return state.when(
      loading: () => const AppLoadingIndicator(),
      error:   (e, _) => AppErrorWidget(message: e.toString()),
      data:    (jobs) => JobListView(jobs: jobs),
    );
  }
}
```

## Global State (Auth)
```dart
// lib/core/providers/auth_provider.dart
final authProvider =
    NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() => const Unauthenticated();

  Future<void> login(String email, String pass) async {
    state = const Authenticating();
    final result = await ref.read(loginUseCaseProvider)(email, pass);
    state = result.fold(
      (f) => AuthFailed(f.message),
      (user) => Authenticated(user),
    );
  }

  void logout() => state = const Unauthenticated();
}
```

## File Locations
```
lib/presentation/viewmodels/   # Feature notifiers
lib/core/providers/            # Global app-wide providers
```

## Rules
- Every screen uses `ConsumerWidget` or `ConsumerStatefulWidget`
- NEVER use `context.read` inside `build()` — only in callbacks
- NEVER call `ref.watch` inside callbacks or async methods
- Provider files named: `<feature>_notifier.dart`
- Always handle loading + error + data — never skip any case
- `ref.invalidateSelf()` to refresh — never manually reset state
