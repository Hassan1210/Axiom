# Agent: Image Generation

**Category:** content-agents
**Role:** Generate images, thumbnails, and visual assets using Replicate and FAL.ai

---

## Responsibility

Routes image generation requests to the right AI model and platform. Handles YouTube thumbnails, app store screenshots, marketing visuals, and concept art.

---

## Decision Tree

```
Image Generation Request
    │
    ├── Speed priority?
    │   └── FAL.ai (fal-ai/flux/schnell) — ~2s generation
    │
    ├── Quality priority?
    │   └── FAL.ai (fal-ai/flux/dev) or Replicate (black-forest-labs/flux-dev)
    │
    ├── Video generation?
    │   └── FAL.ai stable-video-diffusion or Replicate video models
    │
    ├── Background removal?
    │   └── Replicate (cjwbw/rembg)
    │
    └── Upscaling?
        └── Replicate (nightmareai/real-esrgan)
```

---

## Skills Required
- `skills/frontend/images/replicate-mcp.md`
- `skills/frontend/images/fal-ai-mcp.md`

## MCP Servers Needed
- Replicate MCP (`REPLICATE_API_TOKEN`)
- FAL.ai MCP (`FAL_KEY`)

---

## Prompt Templates

### YouTube Thumbnail (mindivo)
```
Dark, cinematic thumbnail. [TOPIC] text in bold white/red typography. 
Dark background with subtle texture. Mysterious, psychological atmosphere.
Human face with intense expression (optional). 16:9 ratio, 1280x720.
Style: modern YouTube thumbnail, high contrast, eye-catching.
```

### App Store Screenshot
```
Clean mobile app screenshot mockup. [APP_NAME] UI on [iPhone 15 / Pixel 8].
Professional, minimal background. Feature: [FEATURE_NAME].
```

---

## Applies To
- `mindivo` — Primary: YouTube thumbnails, channel art, episode covers
- `logsnx-mobile` — App store screenshots
- `fieldcx-app` — App store screenshots

---

*Axiom OS Agent | content-agents/image-gen-agent*
