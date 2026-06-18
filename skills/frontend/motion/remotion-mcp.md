# Remotion — Programmatic Video

**Type:** Skill / MCP Integration
**Category:** frontend / motion
**Status:** available

## What It Does
Create videos programmatically using React. Build motion graphics, animated intros, data visualizations, and YouTube content using code. Remotion renders MP4/WebM from React components.

## Install
```bash
npm create video@latest
# or add to existing project:
npm install remotion @remotion/cli @remotic/player
```

## Core Concepts
```tsx
import { AbsoluteFill, useCurrentFrame, interpolate } from 'remotion';

export const MyVideo = () => {
  const frame = useCurrentFrame();
  const opacity = interpolate(frame, [0, 30], [0, 1]);
  return (
    <AbsoluteFill style={{ opacity, backgroundColor: '#000' }}>
      <h1>Dark Psychology</h1>
    </AbsoluteFill>
  );
};
```

## Render Command
```bash
npx remotion render MyVideo out/video.mp4
# With composition:
npx remotion render src/index.ts MyComp output.mp4 --props='{"title":"Episode 1"}'
```

## Required Env Vars
```
# No API key needed for basic rendering
# For Remotion Lambda (cloud rendering):
AWS_ACCESS_KEY_ID=your_key
AWS_SECRET_ACCESS_KEY=your_secret
REMOTION_AWS_REGION=us-east-1
```

## Usage Examples
- Auto-generate YouTube intros for mindivo channel
- Animated title cards with dark aesthetic
- Data-driven visualizations for psychology stats
- Batch-render episode bumpers

## Applies To
- `mindivo` — Primary tool for automated YouTube video creation

## Links
- GitHub: https://github.com/remotion-dev/remotion
- Docs: https://www.remotion.dev/docs
- Templates: https://www.remotion.dev/templates
