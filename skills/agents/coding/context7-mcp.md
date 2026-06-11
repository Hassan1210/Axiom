# Context7 MCP — Live Library Documentation

**Type:** MCP Server
**Category:** code / development
**Status:** available

## What It Does
Pulls up-to-date, version-specific documentation for any library directly into Claude's context. No more hallucinated APIs — Context7 fetches real docs from the source. Critical for Flutter, Frappe, and rapidly-changing libraries.

## Install
```bash
npx @upstash/context7-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"]
    }
  }
}
```

## Required Env Vars
```
# No API key required for basic usage
# Optional: CONTEXT7_API_KEY for higher rate limits
```

## Usage Examples
Add `use context7` to any prompt:
- "How do I use Riverpod StateNotifier? use context7"
- "Show me the Frappe v15 doctype creation API. use context7"
- "What's the latest Flutter navigation 2.0 API? use context7"
- "How does ERPNext handle multi-tenancy? use context7"

## Applies To
- `logsnx-mobile` — Flutter, Riverpod, Firebase docs
- `fieldcx-app` — Flutter, Riverpod, MVVM pattern docs
- `trace-issue` — Frappe framework docs
- `erp-server` — ERPNext API docs

## Links
- GitHub: https://github.com/upstash/context7
- Docs: https://context7.com
- Library Index: https://context7.com/libraries
