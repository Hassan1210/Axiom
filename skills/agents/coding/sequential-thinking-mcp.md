# Sequential Thinking MCP

**Type:** MCP Server
**Category:** code / development
**Status:** available

## What It Does
Enables structured, multi-step reasoning for complex problems. Forces Claude to think through problems step-by-step before jumping to solutions. Especially useful for architecture decisions, debugging complex bugs, and planning multi-file refactors.

## Install
```bash
npx @modelcontextprotocol/server-sequential-thinking
```

Claude Code config:
```json
{
  "mcpServers": {
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    }
  }
}
```

## Required Env Vars
```
# None required
```

## Usage Examples
- Complex architecture decisions: "Design the MVVM structure for fieldcx-app offline sync"
- Multi-step debugging: "Why is this ERPNext bench migrate failing?"
- Refactoring plans: "Migrate logsnx-mobile from setState to Riverpod"
- System design: "Plan the multi-tenant ERPNext v16 upgrade path"

## Applies To
- All projects — especially for architectural and debugging tasks
- `erp-server` — Complex server migration planning
- `fieldcx-app` — MVVM architecture decisions

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking
- Docs: https://modelcontextprotocol.io/servers/sequential-thinking
