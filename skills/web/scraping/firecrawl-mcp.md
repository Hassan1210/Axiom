# Firecrawl MCP Server

**Type:** MCP Server
**Category:** web / scraping
**Status:** available

## What It Does
Turn any website into clean, LLM-ready markdown. Handles JavaScript-rendered pages, authentication, rate limiting, and PDF extraction. The best web scraping MCP — used by major AI companies.

## Install
```bash
npx firecrawl-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "firecrawl": {
      "command": "npx",
      "args": ["-y", "firecrawl-mcp"],
      "env": {
        "FIRECRAWL_API_KEY": "fc-your_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
FIRECRAWL_API_KEY=fc-xxxx
# Get from: https://www.firecrawl.dev/account
# Free tier: 500 credits/month
```

## Capabilities
- `scrape` — Single URL to clean markdown
- `crawl` — Full site crawl with depth control
- `extract` — Structured data extraction with schema
- `map` — Get all URLs from a domain
- `search` — Search + scrape in one call

## Usage Examples
- "Scrape the ERPNext docs page on leave management"
- "Crawl the Frappe framework changelog and extract breaking changes"
- "Extract all job listings from this careers page as structured JSON"
- "Scrape competitor YouTube channel stats page"

## Applies To
- `mindivo` — Competitor research, trend scraping
- `trace-issue` — ERPNext documentation scraping
- `erp-server` — ERPNext/Frappe docs reference
- General research across all projects

## Links
- GitHub: https://github.com/mendableai/firecrawl-mcp-server
- Dashboard: https://www.firecrawl.dev/account
- Docs: https://docs.firecrawl.dev
