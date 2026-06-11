# Brave Search MCP

**Type:** MCP Server
**Category:** web / search
**Status:** available

## What It Does
Real-time web search using Brave's independent index (not Google). Privacy-focused, no tracking. Returns web results, news, images. One of the most reliable search MCPs with generous free tier.

## Install
```bash
npx @modelcontextprotocol/server-brave-search
```

Claude Code config:
```json
{
  "mcpServers": {
    "brave-search": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-brave-search"],
      "env": {
        "BRAVE_API_KEY": "your_api_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
BRAVE_API_KEY=BSA_xxxx
# Get from: https://api.search.brave.com/app/keys
# Free tier: 2,000 queries/month
```

## Usage Examples
- "Search for ERPNext v16 migration guide"
- "Find latest Flutter 3.x release notes"
- "Search dark psychology YouTube channel growth strategies"
- "Find DigitalOcean Ubuntu 24 Nginx SSL setup guide"

## Applies To
- General OS research — all projects
- `mindivo` — Content research, trend finding
- `erp-server` — ERPNext troubleshooting

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/brave-search
- API Keys: https://api.search.brave.com/app/keys
- Pricing: https://api.search.brave.com/app/subscriptions
