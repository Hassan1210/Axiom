# FieldCX — Claude Code Master Rules

## 🔒 Core Decisions (LOCKED)
- Architecture: **MVVM strictly**
- State Management: **Riverpod only** (no Provider, no BLoC, no setState)
- Code Generation: **None** (no freezed, no build_runner, no json_serializable)
- Theme: **NOT finalized** — placeholder only, await final design handoff
- File length: **Max 100 lines** — split immediately if exceeded

## 📁 Project Structure
```
lib/
├── core/
│   ├── theme/          # AppTheme, AppColors, AppTextStyles (placeholder)
│   ├── network/        # ApiClient, ApiEndpoints, ApiResponse
│   ├── constants/      # AppConstants, AppStrings, AppAssets
│   ├── utils/          # Validators, Extensions, Helpers
│   ├── errors/         # AppFailure, AppException, AppLogger
│   └── di/             # ServiceLocator (get_it) + feature modules
├── data/
│   ├── models/         # Manual fromJson/toJson DTOs
│   ├── repositories/   # Implementations of domain contracts
│   └── datasources/    # Remote + Local datasources
├── domain/
│   ├── entities/       # Business objects (Equatable, no JSON)
│   ├── repositories/   # Abstract contracts
│   └── usecases/       # Single-responsibility use cases
├── presentation/
│   ├── viewmodels/     # Riverpod Notifiers (state + logic)
│   ├── views/          # Screens — UI only, zero logic
│   └── widgets/        # Reusable shared widgets (whole app)
└── main.dart
```

## 📐 Architecture Flow
```
View → ViewModel(Notifier) → UseCase → Repository → DataSource → API
```

## 🧩 Widget Philosophy
- Every widget is **individual** — one widget, one file
- `presentation/widgets/` = shared across whole app
- `views/<feature>/widgets/` = screen-specific only
- Max 80 lines per widget file — extract if exceeded
- Reuse first — never duplicate a widget

## 🎨 Theme Status: FINALIZED (2026-06-18)
- Font: **SF Pro** — use `fontFamily: '.SF Pro Text'`
- Brand: Primary `#F4821E` (Orange) · Secondary `#0D1F30` (Dark Navy)
- Full token set in `.claude/THEME.md` — light + dark mode, all semantic colors
- Update ONLY `core/theme/` files for any visual change — zero refactor needed

## 📋 Sub-Rule Files (READ before working on that layer)
| Topic              | File                        |
|--------------------|-----------------------------|
| Theme & Colors     | `.claude/THEME.md`          |
| Icons              | `.claude/ICONS.md`          |
| API Client         | `.claude/API_CLIENT.md`     |
| ViewModel          | `.claude/VIEWMODEL.md`      |
| View / Screens     | `.claude/VIEW.md`           |
| Widgets            | `.claude/WIDGETS.md`        |
| Models & Entities  | `.claude/MODELS.md`         |
| Repository         | `.claude/REPOSITORY.md`     |
| Dependency Inject  | `.claude/DI.md`             |
| Navigation         | `.claude/NAVIGATION.md`     |
| Error Handling     | `.claude/ERROR_HANDLING.md` |
| Naming Conventions | `.claude/NAMING.md`         |
| State Management   | `.claude/STATE.md`          |
| Testing            | `.claude/TESTING.md`        |

## 🚫 Global Forbidden
- **Icons**: `Icon(Icons.*)`, `CupertinoIcons.*`, any built-in icon → use `SvgPicture.asset(AppAssets.icXxx)` from Figma only
- Hardcoded colors: `Colors.red`, `Color(0xFF...)` → use `AppColors`
- Hardcoded sizes: `16.0`, `EdgeInsets.all(16)` → use `AppDimensions`
- Hardcoded strings in UI → use `AppStrings`
- `setState` in screens → use Riverpod notifier
- `Provider`, `BLoC`, `Cubit` → Riverpod only
- `freezed`, `build_runner`, any code generation → forbidden
- `print()` → use `AppLogger`
- Logic inside `build()` → move to ViewModel
- File over 100 lines → split immediately, no exceptions

## 📦 Dependencies
```yaml
dependencies:
  flutter_riverpod: ^2.5.1
  get_it: ^7.6.7
  dio: ^5.4.3
  go_router: ^13.2.0
  equatable: ^2.0.5
  dartz: ^0.10.1
  shared_preferences: ^2.2.3
  connectivity_plus: ^6.0.3
```
