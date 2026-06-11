# YouTube Data API MCP

**Type:** MCP Server / Skill
**Category:** content / youtube
**Status:** available

## What It Does
Access YouTube Data API v3 through Claude. Search videos, get channel analytics, manage playlists, fetch comments, and research competitors — all for mindivo channel management.

## Install
```bash
npx youtube-mcp-server
# Or use YouTube Data API directly via REST
```

Claude Code config (REST-based):
```json
{
  "mcpServers": {
    "youtube": {
      "command": "npx",
      "args": ["-y", "youtube-data-mcp"],
      "env": {
        "YOUTUBE_API_KEY": "AIza_your_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
YOUTUBE_API_KEY=AIzaSy_xxxx
# Get from: https://console.cloud.google.com → YouTube Data API v3 → Credentials
# Free quota: 10,000 units/day

YOUTUBE_CHANNEL_ID=UC_your_channel_id
# mindivo channel ID — find at: YouTube Studio → Settings → Channel → Advanced
```

## Key API Endpoints
```
GET /search → Search videos, channels
GET /videos → Video details, statistics
GET /channels → Channel info, statistics
GET /comments → Comments on videos
GET /playlistItems → Playlist contents
POST /videos → Upload video metadata
```

## Usage Examples
- "Search YouTube for top dark psychology videos this month"
- "Get the view count and engagement rate for my last 10 mindivo videos"
- "List the top comments on video [ID] and their sentiment"
- "Find competitor channels in the dark psychology niche with 100K-500K subs"
- "Get trending keywords in the psychology category"

## Applies To
- `mindivo` — Primary — all YouTube channel management

## Links
- YouTube Data API v3: https://developers.google.com/youtube/v3
- Console: https://console.cloud.google.com
- API Explorer: https://developers.google.com/youtube/v3/docs
- Quota Calculator: https://developers.google.com/youtube/v3/determine_quota_cost
