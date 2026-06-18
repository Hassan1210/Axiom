# FieldCX — View / Screen Rules

## What a View IS
- Pure UI. Reads Riverpod state. Calls Notifier methods.
- Always `ConsumerWidget` — never plain `StatelessWidget` for screens
- Zero business logic. Zero direct API calls. Zero state mutation.

## File Location
```
lib/presentation/views/
└── <feature>/
    ├── <feature>_screen.dart        # Main screen file
    └── widgets/                     # Screen-specific widgets
        └── <widget_name>.dart       # One widget per file
```

## Standard Screen Pattern
```dart
class JobListScreen extends ConsumerWidget {
  const JobListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jobListProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _AppBar(),
      body: state.when(
        loading: () => const AppLoadingIndicator(),
        error:   (e, _) => AppErrorWidget(message: e.toString()),
        data:    (jobs) => _JobListBody(jobs: jobs),
      ),
    );
  }
}
```

## Widget Extraction Rule
Every distinct UI section = its own widget file.
```
views/jobs/
├── job_list_screen.dart
└── widgets/
    ├── job_card.dart          # Individual job card
    ├── job_list_body.dart     # List wrapper
    ├── job_filter_bar.dart    # Filter chips row
    └── job_empty_state.dart   # Empty UI
```

## Widget File Pattern
```dart
// lib/presentation/views/jobs/widgets/job_card.dart
class JobCard extends StatelessWidget {
  final JobEntity job;
  final VoidCallback onTap;

  const JobCard({super.key, required this.job, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.md),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        ),
        child: _JobCardContent(job: job),
      ),
    );
  }
}
```

## Rules
- Screen files: max 100 lines — extract widgets aggressively
- Widget files: max 80 lines
- No hardcoded colors, sizes, or strings anywhere
- `context.read(provider.notifier).method()` only in callbacks
- `ref.watch(provider)` only in `build()` — never in callbacks
- Navigation via `context.go()` / `context.push()` in View only
- `StatefulWidget` only when animation controller is needed

## Forbidden in Views
```dart
final repo = sl<JobRepository>();    // ❌ bypass DI
Color(0xFF...)                        // ❌ hardcoded color
EdgeInsets.all(16)                    // ❌ hardcoded size
'No jobs found'                       // ❌ hardcoded string
if (user.role == 'admin') { ... }    // ❌ business logic
```
