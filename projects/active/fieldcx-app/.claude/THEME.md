# FieldCX — Theme & Colors Rules

## ✅ STATUS: FINALIZED — Implemented in `lib/core/theme/`
> Source of truth is the actual code. This doc reflects it exactly.
> To change visuals → update ONLY `lib/core/theme/` files. Zero other changes needed.

---

## File Locations
```
lib/core/theme/
├── app_colors.dart        # All color tokens (light + dark)
├── app_text_styles.dart   # All TextStyles (SF Pro Display)
├── app_dimensions.dart    # Spacing, radius, icon sizes
└── app_theme.dart         # ThemeData light + dark (Material 3)
```

---

## AppColors — Token Reference

### Brand
| Token | Value | Usage |
|---|---|---|
| `brandPrimary` | `#F6821E` | Orange — CTA, buttons, focused borders |
| `brandSecondary` | `#0D1F30` | Dark Navy — headers, primary text alias |

### Light Mode — Semantic
| Token | Value |
|---|---|
| `success` | `#00C966` |
| `warning` | `#F0B000` |
| `error` | `#E74141` |
| `info` | `#0A84FF` |

### Light Mode — Background
| Token | Value | Role |
|---|---|---|
| `background` | `#FFFFFF` | Scaffold background |
| `backgroundSecondary` | `#F2F4FA` | Section backgrounds |
| `surface` | `#FFFFFF` | Cards, sheets |
| `inputBackground` | `#F6F8FA` | Input field fill |

### Light Mode — Border
| Token | Value |
|---|---|
| `inputBorder` | `#E5E7EB` |
| `borderStrong` | `#C1D0D0` |

### Light Mode — Text
| Token | Value |
|---|---|
| `onSurface` | `#111821` — Primary text |
| `textSecondary` | `#6C7C90` |
| `textDisabled` | `#9CA0A7` |
| `inputHint` | `#9CA3AF` |

### Dark Mode — Semantic
| Token | Value |
|---|---|
| `darkSuccess` | `#2DC350` |
| `darkWarning` | `#F9BF50` |
| `darkError` | `#E87171` |

### Dark Mode — Background
| Token | Value | Role |
|---|---|---|
| `darkBackground` | `#111218` | Scaffold |
| `darkSurface` | `#141C24` | Cards, sheets |
| `darkInput` | `#1B2530` | Input field fill (Elevated) |

### Dark Mode — Border
| Token | Value |
|---|---|
| `darkInputBorder` | `#25313D` |
| `darkBorderStrong` | `#364A60` |

### Dark Mode — Text
| Token | Value |
|---|---|
| `darkOnSurface` | `#ECEFF1` — Primary text |
| `darkTextSecondary` | `#8A9DB0` |
| `darkTextDisabled` | `#4D5968` |
| `darkInputHint` | `#6B7280` |

---

## AppTextStyles — Scale (SF Pro Display)

Font: **SF Pro Display** — loaded from `assets/fonts/`

| Style | Size | Weight | Usage |
|---|---|---|---|
| `display` | 32px | Bold (700) | Hero titles |
| `h1` | 24px | SemiBold (600) | Page headings |
| `h2` | 20px | SemiBold (600) | Section headings |
| `h3` | 18px | SemiBold (600) | Card headings |
| `body` | 16px | Regular (400) | Body text |
| `bodyMedium` | 16px | Medium (500) | Emphasized body |
| `bodyBold` | 16px | SemiBold (600) | Bold body |
| `caption` | 14px | Regular (400) | Secondary text |
| `captionBold` | 14px | SemiBold (600) | Labels |
| `small` / `micro` | 12px | Medium (500) | Badges, tags |
| `button` | 16px | Bold (700) | Button labels |
| `label` | 13px | Bold (700) | UI labels |
| `loginTitle` | 32px | Bold (700) | Login screen title |
| `loginSubtitle` | 20px | Regular (400) | Login screen subtitle |
| `loginField` | 16px | Medium (500) | Login input text |

---

## AppDimensions
```dart
// Spacing
xs=4  sm=8  md=16  lg=24  xl=32  xxl=48

// Border radius
radiusSm=6  radiusMd=12  radiusLg=20  radiusFull=999

// Icons
iconSm=16  iconMd=24  iconLg=32

// App bar
appBarHeight=56
```

---

## ✅ Always use
```dart
AppColors.brandPrimary          // orange CTA
AppColors.brandSecondary        // dark navy
AppColors.onSurface             // light text primary
AppColors.darkOnSurface         // dark text primary
AppTextStyles.body
AppTextStyles.h1
AppDimensions.md
BorderRadius.circular(AppDimensions.radiusMd)
```

## 🚫 Never use
```dart
Colors.blue / Colors.red / any Colors.*
Color(0xFF...)                  // hardcoded colors
fontSize: 14                    // hardcoded sizes
EdgeInsets.all(16)              // hardcoded spacing
BorderRadius.circular(12)       // hardcoded radius
fontFamily: 'Inter'             // old placeholder
```
