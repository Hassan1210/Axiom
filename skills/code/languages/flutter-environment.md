# Flutter Development Environment

**Type:** Environment Reference
**Category:** code / Flutter
**Last Scanned:** 2026-06-11

## Versions
```
Flutter:  3.41.6 (channel stable)
Dart:     3.11.4
DevTools: 2.54.2
Android SDK: 36.0.0
```

## Installation Location
```
Flutter SDK: /home/hassan/development/flutter2/bin
```

## ⚠️ PATH Issue
Flutter binary is NOT on system PATH. Fix:
```bash
# Add to ~/.bashrc or ~/.zshrc:
export PATH="$HOME/development/flutter2/bin:$PATH"
source ~/.bashrc

# Verify:
flutter --version
dart --version
```

## Flutter Doctor Output (2026-06-11)
```
[!] Flutter — NOT on PATH (add /home/hassan/development/flutter2/bin to PATH)
[✓] Android toolchain — Android SDK 36.0.0
[✓] Chrome — web development ready
[✓] Linux toolchain — Linux desktop builds ready
[!] eglinfo not available (install mesa-utils for GPU info)
[✓] Connected devices (2 available)
[✓] Network resources
```

## Fix eglinfo Warning (optional)
```bash
sudo apt install mesa-utils
```

## Build Targets Available
- ✓ Android (APK/AAB)
- ✓ Web (Chrome)
- ✓ Linux desktop
- ✗ iOS (not available on Linux — needs macOS)

## Key Commands
```bash
# Run on connected device
flutter run

# Build release APK
flutter build apk --release

# Build App Bundle (Play Store)
flutter build appbundle --release

# Run tests
flutter test

# Analyze code
flutter analyze

# Get dependencies
flutter pub get

# Upgrade dependencies
flutter pub upgrade

# Clean build cache
flutter clean
```

## Applies To
- `logsnx-mobile` — Primary Flutter app
- `fieldcx-app` — Primary Flutter app
