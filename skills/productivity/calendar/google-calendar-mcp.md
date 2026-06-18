# Google Calendar MCP Server

**Type:** MCP Server
**Category:** productivity / calendar
**Status:** available

## What It Does
Read and write Google Calendar events through Claude. Schedule meetings, check availability, create recurring events, and manage multiple calendars — all from Claude Code.

## Install
```bash
npx @modelcontextprotocol/server-google-calendar
```

Or community server:
```bash
npx google-calendar-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "google-calendar": {
      "command": "npx",
      "args": ["-y", "google-calendar-mcp"],
      "env": {
        "GOOGLE_CLIENT_ID": "your_client_id",
        "GOOGLE_CLIENT_SECRET": "your_client_secret",
        "GOOGLE_REFRESH_TOKEN": "your_refresh_token"
      }
    }
  }
}
```

## Required Env Vars
```
GOOGLE_CLIENT_ID=xxxx.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=GOCSPX-xxxx
GOOGLE_REFRESH_TOKEN=1//xxxx
# Setup: https://console.cloud.google.com → OAuth 2.0 credentials
# Scopes: https://www.googleapis.com/auth/calendar
```

## OAuth Setup Steps
1. Go to https://console.cloud.google.com
2. Create project → Enable Calendar API
3. Create OAuth 2.0 credentials (Desktop app)
4. Run auth flow to get refresh token
5. Store in cloud/env/

## Usage Examples
- "What meetings do I have this week?"
- "Schedule a deployment window for erp-server next Tuesday 2pm"
- "Block every Friday 9-11am for mindivo content recording"
- "List all upcoming deadlines from my work calendar"

## Applies To
- OS-level — general scheduling and time management

## Links
- GitHub: https://github.com/nspady/google-calendar-mcp
- Google Cloud Console: https://console.cloud.google.com
- Calendar API Docs: https://developers.google.com/calendar
