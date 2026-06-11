# Lottie Animation Integration

**Type:** Skill / Knowledge
**Category:** frontend / motion
**Status:** available

## What It Does
Lottie renders Adobe After Effects animations exported as JSON in Flutter, Web, and mobile. Lightweight, scalable, and resolution-independent animations.

## Flutter Setup
```yaml
# pubspec.yaml
dependencies:
  lottie: ^3.0.0
```

```dart
import 'package:lottie/lottie.dart';

// From assets
Lottie.asset('assets/animations/loading.json')

// From network
Lottie.network('https://example.com/animation.json')

// With controller for fine-grained control
final _controller = AnimationController(vsync: this);
Lottie.asset(
  'assets/animations/success.json',
  controller: _controller,
  onLoaded: (composition) {
    _controller.duration = composition.duration;
    _controller.forward();
  },
)
```

## Animation Sources
- **LottieFiles**: https://lottiefiles.com (free + premium)
- **Icons8**: https://icons8.com/animated-icons
- **After Effects** → Bodymovin plugin → export JSON

## AI Generation
- Use Replicate MCP with `lottie-gen` models
- Describe animation → get Lottie JSON

## Usage Examples
- Loading spinners in logsnx-mobile and fieldcx-app
- Success/error state animations
- Onboarding screen animations
- mindivo — animated thumbnails or intros

## Applies To
- `logsnx-mobile` — Loading states, success animations
- `fieldcx-app` — Status indicators, transitions
- `mindivo` — Animated overlays for videos

## Links
- Flutter Package: https://pub.dev/packages/lottie
- LottieFiles: https://lottiefiles.com
- Bodymovin: https://github.com/airbnb/lottie-web
