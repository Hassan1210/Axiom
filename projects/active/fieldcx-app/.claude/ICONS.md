# FieldCX — Icons Rules

## ⚠️ CRITICAL RULE: Figma SVGs Only — No Random Icons

**NEVER use:**
```dart
Icons.arrow_back        // ❌ Material icons
CupertinoIcons.house    // ❌ Cupertino icons
Icon(Icons.anything)    // ❌ Any flutter built-in icon
```

**ALWAYS use:**
```dart
SvgPicture.asset('assets/icons/icon_name.svg')  // ✅ Figma SVG only
```

---

## Workflow: Adding a New Icon

1. **Find the icon in Figma** — locate the exact SVG vector in the Figma file
2. **Export it** — right-click layer → Export → SVG
3. **Save to** `assets/icons/<icon_name>.svg`
4. **Register in pubspec.yaml** — under `flutter > assets`
5. **Use it** via `SvgPicture.asset(AppAssets.iconName)`
6. **Add a constant** in `AppAssets` so the path is never hardcoded

---

## File Locations

```
assets/
└── icons/
    ├── ic_location.svg
    ├── ic_work_orders.svg
    ├── ic_drive.svg
    ├── ic_schedule.svg
    ├── ic_warning.svg
    └── ...
```

---

## AppAssets Pattern

```dart
// lib/core/constants/app_assets.dart
abstract class AppAssets {
  // Icons
  static const icLocation   = 'assets/icons/ic_location.svg';
  static const icWorkOrders = 'assets/icons/ic_work_orders.svg';
  static const icDrive      = 'assets/icons/ic_drive.svg';
  static const icSchedule   = 'assets/icons/ic_schedule.svg';
  static const icWarning    = 'assets/icons/ic_warning.svg';
}
```

---

## Usage Pattern

```dart
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

// Basic usage
SvgPicture.asset(AppAssets.icLocation)

// With color theming
SvgPicture.asset(
  AppAssets.icLocation,
  colorFilter: ColorFilter.mode(
    isDark ? AppColors.darkTextSecondary : AppColors.driveIconColor,
    BlendMode.srcIn,
  ),
  width: AppDimensions.iconMd,
  height: AppDimensions.iconMd,
)
```

---

## pubspec.yaml

```yaml
dependencies:
  flutter_svg: ^2.0.0   # required for SVG rendering

flutter:
  assets:
    - assets/icons/
```

---

## 🚫 Never Do

```dart
Icon(Icons.location_on_outlined)           // ❌ wrong
Icon(Icons.warning_amber_rounded)          // ❌ wrong
Icon(Icons.directions_car_outlined)        // ❌ wrong
Icon(Icons.schedule_rounded)               // ❌ wrong
Icon(Icons.access_time_rounded)            // ❌ wrong
Icon(Icons.person_rounded)                 // ❌ wrong
```

## ✅ Always Do

```dart
SvgPicture.asset(AppAssets.icLocation)     // ✅ from Figma
SvgPicture.asset(AppAssets.icWarning)      // ✅ from Figma
SvgPicture.asset(AppAssets.icDrive)        // ✅ from Figma
```

---

> When an SVG is not yet exported from Figma, leave a `// TODO: replace with Figma SVG — AppAssets.icXxx`
> comment and use a temporary `SizedBox` placeholder. Do NOT substitute a Material icon.
