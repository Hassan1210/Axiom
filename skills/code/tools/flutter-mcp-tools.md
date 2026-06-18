# Flutter/Dart MCP Tools & Skills

**Type:** Skill / Knowledge
**Category:** code / Flutter
**Status:** available

## What It Does
Reference skill for Flutter/Dart development within Axiom. Covers key packages, patterns, debugging tools, and MCP integrations specific to Hassan's Flutter projects.

## Key MCP Integrations for Flutter
- **Context7** — Pull live pub.dev package docs (`use context7` + package name)
- **GitHub MCP** — Search Flutter repos, create PRs for mobile apps
- **Filesystem MCP** — Navigate Flutter project structure

## Essential Flutter Packages (Hassan's Stack)
```yaml
# State Management
flutter_riverpod: ^2.5.0
riverpod_annotation: ^2.3.0

# Navigation
go_router: ^14.0.0

# Networking
dio: ^5.4.0
retrofit: ^4.1.0

# Firebase
firebase_core: ^2.27.0
firebase_auth: ^4.17.0
cloud_firestore: ^4.15.0
firebase_messaging: ^14.7.0

# Local Storage
hive_flutter: ^1.1.0
shared_preferences: ^2.2.0

# UI
lottie: ^3.0.0
cached_network_image: ^3.3.0
flutter_svg: ^2.0.9

# On-device AI (logsnx-mobile)
flutter_gemma: ^0.1.4

# ERPNext Integration
# Custom REST API via Dio + Retrofit
```

## Project Patterns

### MVVM + Riverpod (fieldcx-app)
```
lib/
├── core/           # DI, router, theme, constants
├── data/           # Repositories, data sources, models
├── domain/         # Entities, use cases, interfaces
└── presentation/   # UI (views, viewmodels, widgets)
```

### Feature-First (logsnx-mobile)
```
lib/
├── features/
│   ├── auth/
│   ├── attendance/
│   ├── pos/
│   └── ai_session/
├── shared/         # Shared widgets, utils
└── core/           # App-wide config
```

## Debugging Commands
```bash
flutter analyze                    # Static analysis
flutter test                       # Run unit/widget tests
flutter run --verbose              # Verbose logs
flutter logs                       # Device logs
dart fix --apply                   # Auto-fix lint issues
flutter pub deps --style=compact   # Check dependency tree
```

## Applies To
- `logsnx-mobile` — HRMS & POS Flutter app
- `fieldcx-app` — Field management Flutter app (MVVM + Riverpod)

## Links
- pub.dev: https://pub.dev
- Flutter Docs: https://docs.flutter.dev
- Riverpod Docs: https://riverpod.dev
