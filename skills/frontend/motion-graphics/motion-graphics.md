# Skill: Motion Graphics

**Category:** frontend/motion-graphics
**Owner:** Hassan

---

## Purpose

Create animations and motion graphics for YouTube videos, Flutter apps, and web interfaces.

---

## Tools Stack

| Tool | Use Case | Output |
|---|---|---|
| After Effects | Professional video motion graphics | Lottie JSON / video |
| Lottie / Rive | Lightweight JSON animations | Web + Flutter |
| GSAP | High-performance web animations | JavaScript |
| Framer Motion | React component animations | JSX |
| Remotion | Code-driven video creation | MP4 via React |
| CSS Keyframes | Micro UI animations | CSS |

---

## Lottie in Flutter

```dart
// pubspec.yaml
// lottie: ^3.x

import 'package:lottie/lottie.dart';

// Usage
Lottie.asset(
  'assets/animations/loading.json',
  width: 200,
  height: 200,
  fit: BoxFit.fill,
)
```

## Framer Motion (React)

```jsx
import { motion } from 'framer-motion'

const fadeIn = {
  hidden: { opacity: 0, y: 20 },
  visible: { opacity: 1, y: 0, transition: { duration: 0.5 } }
}

<motion.div variants={fadeIn} initial="hidden" animate="visible">
  Content
</motion.div>
```

## GSAP

```javascript
import gsap from 'gsap'

gsap.from('.hero-text', {
  duration: 1,
  y: 50,
  opacity: 0,
  stagger: 0.2,
  ease: 'power3.out'
})
```

## Remotion (Video via Code)

```jsx
import { useCurrentFrame, interpolate } from 'remotion'

export const MyVideo = () => {
  const frame = useCurrentFrame()
  const opacity = interpolate(frame, [0, 30], [0, 1])
  return <div style={{ opacity }}>Hello Remotion</div>
}
```

---

## YouTube Motion Graphics Workflow

1. Design concept in Figma
2. Animate in After Effects
3. Export as Lottie JSON (via Bodymovin plugin)
4. Use in Flutter app or web with Lottie player
5. For full video: render from After Effects or Remotion

---

## AI Image Gen for Thumbnails

Tools to use (search web for latest):
- **Midjourney** — photorealistic thumbnails
- **DALL-E 3** — via ChatGPT / API
- **Stable Diffusion** — local, custom styles
- **Canva AI** — quick thumbnail generation

---

*Axiom OS Skill | frontend/motion-graphics*
