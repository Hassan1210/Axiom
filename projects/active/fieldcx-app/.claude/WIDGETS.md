# FieldCX — Widgets Rules

## Two Widget Tiers

| Tier | Location | Used |
|------|----------|------|
| **Shared / Global** | `lib/presentation/widgets/` | Whole app |
| **Screen-specific** | `lib/presentation/views/<feature>/widgets/` | That screen only |

## Rule: One Widget = One File
```
lib/presentation/widgets/
├── app_loading_indicator.dart
├── app_error_widget.dart
├── app_empty_state.dart
├── app_button.dart
├── app_text_field.dart
├── app_badge.dart
├── app_avatar.dart
├── app_divider.dart
└── app_bottom_sheet.dart
```

## Shared Widget Pattern
```dart
// lib/presentation/widgets/app_button.dart
class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final AppButtonVariant variant;

  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
    this.variant = AppButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: _style(),
        child: isLoading
            ? const AppLoadingIndicator(size: AppDimensions.iconSm)
            : Text(label, style: AppTextStyles.button),
      ),
    );
  }

  ButtonStyle _style() => ElevatedButton.styleFrom(
    backgroundColor: variant == AppButtonVariant.primary
        ? AppColors.primary
        : AppColors.surface,
    foregroundColor: variant == AppButtonVariant.primary
        ? AppColors.surface
        : AppColors.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
    ),
  );
}

enum AppButtonVariant { primary, secondary, ghost }
```

## Promotion Rule
> If a screen-specific widget is used in 2+ screens → move to `widgets/`

## Widget Checklist
- [ ] One widget per file
- [ ] File under 80 lines — split into sub-widgets if needed
- [ ] No hardcoded colors, sizes, or strings
- [ ] All colors from `AppColors`
- [ ] All sizes from `AppDimensions`
- [ ] All text styles from `AppTextStyles`
- [ ] All user-facing strings from `AppStrings`
- [ ] Const constructor where possible
- [ ] No business logic — pure UI

## Common Shared Widgets to Build First
```
AppLoadingIndicator    # centered CircularProgressIndicator
AppErrorWidget         # error message + retry button
AppEmptyState          # icon + label for empty lists
AppButton              # primary / secondary / ghost variants
AppTextField           # styled input with label + error
AppBadge               # status chip (color from AppColors)
AppAvatar              # initials or image avatar
AppBottomSheet         # consistent modal bottom sheet
AppConfirmDialog       # reusable confirm/cancel dialog
```
