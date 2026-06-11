# On-Device AI for Flutter (Gemma / LiteRT)

**Type:** Skill / Knowledge
**Category:** data / ai
**Status:** available

## What It Does
Run AI models directly on the device — no internet required. Used in logsnx-mobile for AI-powered HR assistance. Covers flutter_gemma (Gemma models) and LiteRT (TensorFlow Lite Runtime).

## Packages
```yaml
# pubspec.yaml
flutter_gemma: ^0.1.4          # Gemma on-device LLM
# LiteRT (replaces tflite_flutter):
tflite_flutter: ^0.11.0        # TFLite inference
```

## flutter_gemma Setup

### 1. Download Model
```
Gemma 2B: ~1.4GB
Download from: https://www.kaggle.com/models/google/gemma
Model format: .bin (CPU) or .bin (GPU)
Place at: assets/models/gemma-2b-it-cpu-int4.bin
```

### 2. pubspec.yaml
```yaml
flutter_gemma: ^0.1.4
flutter:
  assets:
    - assets/models/
```

### 3. Implementation
```dart
import 'package:flutter_gemma/flutter_gemma.dart';

// Initialize
final gemma = FlutterGemma.instance;
await gemma.init(
  modelPath: 'assets/models/gemma-2b-it-cpu-int4.bin',
  maxTokens: 512,
);

// Inference
final response = await gemma.generateResponse(
  prompt: 'What are my leave balances?',
);

// Streaming
gemma.generateResponseStream(prompt: '...').listen((token) {
  setState(() => _response += token);
});

// Cleanup — CRITICAL (fixes iOS crash)
@override
void dispose() {
  gemma.dispose();  // Must call before widget disposal
  super.dispose();
}
```

## Known Issues

### iOS Teardown Crash (flutter_gemma 0.1.4)
**Symptom:** App crashes on iOS 17.4+ when navigating away from AI screen
**Fix:** Ensure `gemma.dispose()` is called in widget `dispose()` before any other disposal
**Root cause:** LiteRTLM session not properly torn down if widget disposed while inference running

### Android GPU Backend
```dart
// Use CPU backend for compatibility
await gemma.init(
  modelPath: '...',
  backend: GemmaBackend.cpu,  // More stable than GPU
);
```

## Memory Considerations
- Gemma 2B INT4: ~1.4GB RAM (too large for low-end devices)
- Gemma 2B INT8: ~2.8GB RAM
- Use INT4 quantized for mobile
- Check device RAM before loading

## Applies To
- `logsnx-mobile` — Primary: AI-powered HRMS assistant

## Links
- flutter_gemma: https://pub.dev/packages/flutter_gemma
- Gemma Models: https://www.kaggle.com/models/google/gemma
- LiteRT Docs: https://ai.google.dev/edge/litert
- Google AI Edge: https://ai.google.dev/edge
