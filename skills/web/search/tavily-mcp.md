# Tavily MCP Server

**Type:** MCP Server
**Category:** web / search
**Status:** available

## What It Does
Search API optimized for AI agents. Returns clean, structured results designed for LLM consumption — no ads, no noise. Includes answer synthesis capability (like a mini RAG). Fast and reliable for agentic workflows.

## Install
```bash
npx tavily-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "tavily": {
      "command": "npx",
      "args": ["-y", "tavily-mcp"],
      "env": {
        "TAVILY_API_KEY": "tvly-your_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
TAVILY_API_KEY=tvly-xxxx
# Get from: https://app.tavily.com/home
# Free tier: 1,000 searches/month
```

## Key Features
- `search_depth: "advanced"` for deep research
- `include_answer: true` — synthesized answer + sources
- `max_results` — control result count
- Topic filtering: `"general"` or `"news"`

## Usage Examples
- "Research the best ERPNext hosting configurations on DigitalOcean"
- "Find recent news about Flutter 4 release"
- "Research dark psychology content monetization strategies"
- "Find Frappe v15 to v16 breaking changes"

## Applies To
- All projects — fast AI-optimized research
- `mindivo` — Topic research, news monitoring
- Technical troubleshooting across all projects

## Links
- GitHub: https://github.com/tavily-ai/tavily-mcp
- Dashboard: https://app.tavily.com
- Docs: https://docs.tavily.com
