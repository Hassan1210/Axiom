# Exa MCP Server

**Type:** MCP Server
**Category:** web / search
**Status:** available

## What It Does
AI-native search engine optimized for finding high-quality content. Unlike traditional search, Exa understands semantic meaning — great for finding technical documentation, research papers, and specific content types. Returns full page content, not just links.

## Install
```bash
npx exa-mcp-server
```

Claude Code config:
```json
{
  "mcpServers": {
    "exa": {
      "command": "npx",
      "args": ["-y", "exa-mcp-server"],
      "env": {
        "EXA_API_KEY": "your_api_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
EXA_API_KEY=exa_xxxx
# Get from: https://dashboard.exa.ai/api-keys
# Free tier: 1,000 searches/month
```

## Capabilities
- Semantic search (meaning-based, not keyword)
- Full content retrieval (not just snippets)
- Domain filtering (`include_domains`, `exclude_domains`)
- Date filtering (find recent content)
- Similar document finding

## Usage Examples
- "Find research papers on dark psychology persuasion techniques"
- "Search for Flutter MVVM implementation examples on GitHub"
- "Find Frappe custom app tutorials with full content"
- "Search for DigitalOcean ERPNext deployment guides from 2024+"

## Applies To
- Research tasks across all projects
- `mindivo` — Content research, competitor analysis
- General technical research

## Links
- GitHub: https://github.com/exa-labs/exa-mcp-server
- Dashboard: https://dashboard.exa.ai
- Docs: https://docs.exa.ai
