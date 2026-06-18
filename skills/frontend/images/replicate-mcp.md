# Replicate MCP — AI Image Generation

**Type:** MCP Server
**Category:** frontend / images
**Status:** available

## What It Does
Run thousands of AI models (Stable Diffusion, FLUX, SDXL, video generation, audio) via API. Use through MCP to generate images, thumbnails, and visuals directly in Claude conversations.

## Install
```bash
npx @modelcontextprotocol/server-replicate
```

Claude Code config:
```json
{
  "mcpServers": {
    "replicate": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-replicate"],
      "env": {
        "REPLICATE_API_TOKEN": "your_token_here"
      }
    }
  }
}
```

## Required Env Vars
```
REPLICATE_API_TOKEN=r8_xxxx  # Get from: https://replicate.com/account/api-tokens
```

## Popular Models
| Model | Use Case | ID |
|---|---|---|
| FLUX.1-schnell | Fast image gen | `black-forest-labs/flux-schnell` |
| FLUX.1-dev | High quality | `black-forest-labs/flux-dev` |
| SDXL | Versatile | `stability-ai/sdxl` |
| Real-ESRGAN | Upscaling | `nightmareai/real-esrgan` |
| Remove-bg | Background removal | `cjwbw/rembg` |

## Usage Examples
- Generate YouTube thumbnails for mindivo (dark psychology aesthetic)
- Create app store screenshots for logsnx-mobile / fieldcx-app
- Generate UI mockup illustrations
- Upscale low-res reference images

## Applies To
- `mindivo` — Thumbnail generation, channel art
- `logsnx-mobile` — App store assets
- `fieldcx-app` — Marketing visuals

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/replicate
- Replicate: https://replicate.com
- API Tokens: https://replicate.com/account/api-tokens
- Model Explorer: https://replicate.com/explore
