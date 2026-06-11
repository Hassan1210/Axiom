# Puppeteer MCP Server

**Type:** MCP Server
**Category:** web / scraping
**Status:** available

## What It Does
Headless Chrome browser automation via Puppeteer. Navigate pages, click elements, fill forms, take screenshots, and extract data from JavaScript-heavy sites. Self-hosted — no API key needed.

## Install
```bash
npx @modelcontextprotocol/server-puppeteer
```

Claude Code config:
```json
{
  "mcpServers": {
    "puppeteer": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-puppeteer"]
    }
  }
}
```

## Required Env Vars
```
# None required — runs locally with headless Chrome
# Chrome/Chromium must be installed:
# sudo apt install chromium-browser  (Ubuntu)
```

## Capabilities
- `puppeteer_navigate` — Go to URL
- `puppeteer_screenshot` — Capture page screenshot
- `puppeteer_click` — Click elements
- `puppeteer_fill` — Fill form inputs
- `puppeteer_evaluate` — Run JavaScript in page context
- `puppeteer_select` — Select dropdown options

## Usage Examples
- "Take a screenshot of the ERPNext HR dashboard"
- "Log into ERPNext and navigate to the leave reports"
- "Scrape the attendance records table from the admin panel"
- "Test the login flow on a local Flutter web build"

## Applies To
- `erp-server` — ERPNext admin automation
- `trace-issue` — UI testing and data extraction
- General web automation

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/puppeteer
- Puppeteer Docs: https://pptr.dev
