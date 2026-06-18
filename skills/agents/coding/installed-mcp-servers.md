# Installed MCP Servers — Hassan's Claude Setup

**Type:** Environment Reference
**Category:** code / agents
**Last Scanned:** 2026-06-11

## MCP Servers via `claude mcp list`

| Server | Status | Notes |
|---|---|---|
| `claude.ai Canva` | ✓ Connected | Design tool |
| `claude.ai Google Drive` | ! Needs Auth | Run `claude mcp auth` |
| `claude.ai Indeed` | ✓ Connected | Job search |
| `claude.ai Google Calendar` | ! Needs Auth | Run `claude mcp auth` |
| `claude.ai Gmail` | ! Needs Auth | Run `claude mcp auth` |

## MCP Servers via `~/.claude/mcp.json`

### Figma MCP (CONFIGURED — has real API key)
```json
{
  "figma": {
    "command": "/home/hassan/.nvm/versions/node/v22.14.0/bin/npx",
    "args": ["-y", "figma-developer-mcp", "--stdio"],
    "env": {
      "FIGMA_API_KEY": "figd_GRjS...51i"  // Key is set — ready to use
    }
  }
}
```
→ Figma MCP is **fully configured** — see `skills/frontend/design/figma-mcp.md`

## Action Items

### Authenticate Pending MCPs
```bash
# Google Drive, Calendar, Gmail need OAuth
claude mcp auth "claude.ai Google Calendar"
claude mcp auth "claude.ai Gmail"
claude mcp auth "claude.ai Google Drive"
```

### Add More MCPs to ~/.claude/settings.json
Copy configs from Axiom skill files:
- `skills/agents/coding/github-mcp.md` — needs GITHUB_PERSONAL_ACCESS_TOKEN
- `skills/web/search/brave-search-mcp.md` — needs BRAVE_API_KEY
- `skills/web/scraping/firecrawl-mcp.md` — needs FIRECRAWL_API_KEY
- `skills/data/ai/anthropic-agent-patterns.md` — needs ANTHROPIC_API_KEY

## Config File Locations
```
~/.claude/mcp.json          ← MCP server definitions
~/.claude/settings.json     ← Claude Code settings (mcpServers key)
```
