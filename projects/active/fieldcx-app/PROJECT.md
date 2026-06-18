# Project: FieldCX App

> Flutter field management app — MVVM + Riverpod, mobile & tablet support.

---

## Meta

| Field | Value |
|---|---|
| Status | `active` |
| Started | 2026-06-18 |
| Stack | Flutter, Dart, Riverpod, Dio, GoRouter, get_it |
| Client | FieldCX |
| Repo | — |
| Source | `/home/hassan/Documents/Flutter Projects/fieldcx/` |
| Deploy | TBD |

---

## Overview

FieldCX is a Flutter field management application built with strict MVVM architecture and Riverpod state management. It targets both phone and tablet (iPad) form factors. No code generation tools are used — all models use manual `fromJson/toJson`.

---

## Architecture

```
lib/
├── core/
│   ├── theme/          # AppTheme, AppColors, AppTextStyles
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
│   └── widgets/        # Reusable shared widgets
└── main.dart
```

**Flow:** `View → ViewModel(Notifier) → UseCase → Repository → DataSource → API`

---

## Core Rules (LOCKED)

- Architecture: **MVVM strictly**
- State: **Riverpod only** (no Provider, BLoC, setState)
- Code gen: **None** (no freezed, no build_runner)
- File length: **Max 100 lines** — split if exceeded
- Platforms: **Phone + Tablet (iPad)** — every screen must work on both
- Theme: Placeholder until Figma designs finalized

---

## Sub-Rule Files

| Topic | File |
|---|---|
| Theme & Colors | `.claude/THEME.md` |
| API Client | `.claude/API_CLIENT.md` |
| ViewModel | `.claude/VIEWMODEL.md` |
| View / Screens | `.claude/VIEW.md` |
| Widgets | `.claude/WIDGETS.md` |
| Models & Entities | `.claude/MODELS.md` |
| Repository | `.claude/REPOSITORY.md` |
| Dependency Inject | `.claude/DI.md` |
| Navigation | `.claude/NAVIGATION.md` |
| Error Handling | `.claude/ERROR_HANDLING.md` |
| Naming Conventions | `.claude/NAMING.md` |
| State Management | `.claude/STATE.md` |
| Testing | `.claude/TESTING.md` |
| Responsive/Tablet | `.claude/RESPONSIVE.md` |

> These files live in the actual project at `/home/hassan/Documents/Flutter Projects/fieldcx/.claude/` — create them as needed.

---

## Skills Used

- `skills/code/languages/flutter-dart`
- `skills/code/frameworks/` (Riverpod patterns)
- `skills/frontend/design/figma-mcp`

## Agents Used

- `agents/code-agents/flutter-dev-agent`
- `agents/code-agents/ui-component-agent`
- `agents/code-agents/debug-agent`

---

## Environment Variables

```
axiom/cloud/env/fieldcx-app.env
```

---

## Current Tasks

- [ ] Set up `.claude/` sub-rule files in project
- [ ] Define app features and screens
- [ ] Finalize theme from Figma

## Known Issues

- Theme is placeholder — awaiting final Figma designs
- `.claude/` sub-rule files not yet created

## Changelog

### v0.1.0 — 2026-06-18
- Added to Axiom OS
- CLAUDE.md imported from project root

---

*Part of Axiom OS | Hassan*
