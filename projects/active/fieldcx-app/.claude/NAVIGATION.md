# FieldCX — Navigation Rules

## Tool: `go_router`

## File Location
```
lib/core/navigation/
├── app_router.dart       # All route definitions
├── app_routes.dart       # Route name constants
└── guards/
    └── auth_guard.dart   # Route guard (redirect logic)
```

## app_routes.dart
```dart
abstract class AppRoutes {
  static const splash   = '/';
  static const login    = '/login';
  static const home     = '/home';
  static const jobList  = '/jobs';
  static const jobDetail = '/jobs/:id';
  static const agentMap = '/map';
  static const profile  = '/profile';
}
```

## app_router.dart Pattern
```dart
final appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  redirect: authGuard,
  routes: [
    GoRoute(path: AppRoutes.splash,  builder: (_, __) => const SplashScreen()),
    GoRoute(path: AppRoutes.login,   builder: (_, __) => const LoginScreen()),
    ShellRoute(
      builder: (_, __, child) => AppShell(child: child),
      routes: [
        GoRoute(path: AppRoutes.home,    builder: (_, __) => const HomeScreen()),
        GoRoute(path: AppRoutes.jobList, builder: (_, __) => const JobListScreen()),
        GoRoute(
          path: AppRoutes.jobDetail,
          builder: (_, state) => JobDetailScreen(
            jobId: state.pathParameters['id']!,
          ),
        ),
        GoRoute(path: AppRoutes.agentMap, builder: (_, __) => const AgentMapScreen()),
        GoRoute(path: AppRoutes.profile,  builder: (_, __) => const ProfileScreen()),
      ],
    ),
  ],
);
```

## auth_guard.dart
```dart
String? authGuard(BuildContext context, GoRouterState state) {
  final isLoggedIn = sl<AuthRepository>().isAuthenticated;
  final onAuthRoute = state.matchedLocation == AppRoutes.login;

  if (!isLoggedIn && !onAuthRoute) return AppRoutes.login;
  if (isLoggedIn && onAuthRoute)  return AppRoutes.home;
  return null;
}
```

## Navigating from ViewModel
```dart
// ViewModels DO NOT navigate directly. They expose state.
// Views observe state and navigate:
ref.listen(authNotifierProvider, (_, state) {
  if (state is Authenticated) context.go(AppRoutes.home);
});
```

## Rules
- ALL route strings live in `AppRoutes` — no inline strings.
- ViewModels NEVER call `context.go()` or `context.push()`.
- Pass params via `pathParameters` or `extra` — never global state.
- Use `ShellRoute` for bottom-nav / persistent shell layouts.
- Auth redirect ALWAYS handled in `authGuard`, not in screens.
