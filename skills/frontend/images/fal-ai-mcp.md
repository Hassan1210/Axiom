# FAL.ai MCP — Fast Image & Video Generation

**Type:** MCP Server
**Category:** frontend / images
**Status:** available

## What It Does
Ultra-fast AI image and video generation via FAL.ai serverless GPU infrastructure. Significantly faster than Replicate for real-time generation. Supports FLUX, video generation, LoRA training, and more.

## Install
```bash
npx @fal-ai/mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "fal-ai": {
      "command": "npx",
      "args": ["-y", "@fal-ai/mcp"],
      "env": {
        "FAL_KEY": "your_fal_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
FAL_KEY=fal-xxx  # Get from: https://fal.ai/dashboard/keys
```

## Popular Models
| Model | Use Case |
|---|---|
| `fal-ai/flux/schnell` | Fastest image gen |
| `fal-ai/flux/dev` | High quality images |
| `fal-ai/stable-video-diffusion` | Image-to-video |
| `fal-ai/sadtalker` | Talking head video |
| `fal-ai/lcm` | Real-time image gen |

## Usage Examples
- Real-time thumbnail generation for mindivo
- Batch generate episode cover art
- Animate static images for YouTube shorts
- Fast iteration on visual concepts

## Applies To
- `mindivo` — Primary image/video gen for YouTube content
- `logsnx-mobile` / `fieldcx-app` — App marketing assets

## Links
- GitHub: https://github.com/fal-ai/fal-mcp
- FAL.ai: https://fal.ai
- API Keys: https://fal.ai/dashboard/keys
- Model Gallery: https://fal.ai/models
