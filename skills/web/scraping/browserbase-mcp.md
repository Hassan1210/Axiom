# Browserbase MCP Server

**Type:** MCP Server
**Category:** web / scraping
**Status:** available

## What It Does
Cloud browser infrastructure for AI agents. Run headless browsers in the cloud without managing infrastructure. Handles anti-bot detection, proxies, CAPTCHAs, and session management. Better than self-hosted Puppeteer for production scraping.

## Install
```bash
npx @browserbasehq/mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "browserbase": {
      "command": "npx",
      "args": ["-y", "@browserbasehq/mcp"],
      "env": {
        "BROWSERBASE_API_KEY": "your_api_key",
        "BROWSERBASE_PROJECT_ID": "your_project_id"
      }
    }
  }
}
```

## Required Env Vars
```
BROWSERBASE_API_KEY=bb_live_xxxx   # Get from: https://www.browserbase.com/settings
BROWSERBASE_PROJECT_ID=prj_xxxx   # Get from: https://www.browserbase.com/projects
# Free tier: 200 minutes/month
```

## Capabilities
- Cloud Chrome/Firefox sessions
- Anti-bot bypass built-in
- Session recording + replay
- Screenshot and video capture
- Stagehand integration (AI-native browser control)

## Usage Examples
- Scrape sites that block headless browsers
- Automate ERPNext workflows from cloud
- Competitor monitoring automation
- YouTube analytics page data extraction

## Applies To
- `mindivo` — YouTube competitor research
- `erp-server` — Cloud-based admin automation
- General production-grade scraping

## Links
- GitHub: https://github.com/browserbase/mcp-server-browserbase
- Dashboard: https://www.browserbase.com
- Docs: https://docs.browserbase.com
