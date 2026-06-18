# GSAP — GreenSock Animation Platform

**Type:** Skill / Knowledge
**Category:** frontend / motion
**Status:** available

## What It Does
Industry-standard JavaScript animation library. Used for scroll-triggered animations, timelines, SVG morphing, and complex motion sequences in web projects.

## Install
```bash
npm install gsap
# GSAP Club (ScrollTrigger, MorphSVG, etc.):
npm install gsap@npm:@gsap/shockingly
```

## Core Patterns
```js
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
gsap.registerPlugin(ScrollTrigger);

// Basic tween
gsap.to('.element', { x: 100, opacity: 1, duration: 0.8, ease: 'power3.out' });

// Timeline
const tl = gsap.timeline({ defaults: { ease: 'power2.inOut' } });
tl.from('.title', { y: 60, opacity: 0, duration: 0.6 })
  .from('.subtitle', { y: 40, opacity: 0, duration: 0.5 }, '-=0.3');

// ScrollTrigger
gsap.from('.card', {
  scrollTrigger: { trigger: '.card', start: 'top 80%' },
  y: 50, opacity: 0, stagger: 0.15
});
```

## Use With Remotion
```tsx
// Use in Remotion for frame-by-frame control
import { useCurrentFrame } from 'remotion';
// Map frame number to GSAP progress
```

## Usage Examples
- Web dashboard animations for ERPNext custom pages
- Landing page hero animations
- Scroll-based storytelling for mindivo web presence
- YouTube thumbnail hover previews

## Applies To
- Any web frontend (ERPNext Frappe pages, custom dashboards)
- `mindivo` — Web presence animations

## Links
- Docs: https://gsap.com/docs
- GitHub: https://github.com/greensock/GSAP
- ScrollTrigger: https://gsap.com/docs/v3/Plugins/ScrollTrigger
- Easing visualizer: https://gsap.com/docs/v3/Eases
