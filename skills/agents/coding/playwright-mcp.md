# Playwright MCP Server

**Type:** MCP Server
**Category:** code / development / testing
**Status:** available

## What It Does
Browser automation and testing via Playwright. Lets Claude control a real browser — navigate pages, click elements, fill forms, take screenshots, and run E2E tests. Essential for testing web UIs and scraping JavaScript-heavy sites.

## Install
```bash
npx @playwright/mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp"]
    }
  }
}
```

## Required Env Vars
```
# None required for basic usage
# Playwright browsers auto-installed on first run
```

## Usage Examples
- "Open the ERPNext admin panel and take a screenshot of the HR module"
- "Test the login flow on the logsnx web portal"
- "Scrape the leave application list from the ERPNext instance"
- "Run E2E tests on the trace-issue app UI"

## Applies To
- `erp-server` — ERPNext UI testing, admin automation
- `trace-issue` — Frappe web UI testing
- Any web frontend testing

## Links
- GitHub: https://github.com/microsoft/playwright-mcp
- Playwright Docs: https://playwright.dev
