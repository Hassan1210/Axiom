# Perplexity MCP Server

**Type:** MCP Server
**Category:** web / search
**Status:** available

## What It Does
AI-powered search with citations. Perplexity searches the web and synthesizes answers with source links in real-time. Best for getting quick, cited answers to technical questions.

## Install
```bash
npx @modelcontextprotocol/server-perplexity-ask
```

Or community server:
```bash
npx perplexity-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "perplexity": {
      "command": "npx",
      "args": ["-y", "perplexity-mcp"],
      "env": {
        "PERPLEXITY_API_KEY": "pplx-your_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
PERPLEXITY_API_KEY=pplx-xxxx
# Get from: https://www.perplexity.ai/settings/api
# Pricing: $5/month for API access + per-query cost
```

## Models Available
- `llama-3.1-sonar-small-128k-online` — Fast, cheap
- `llama-3.1-sonar-large-128k-online` — Better quality
- `llama-3.1-sonar-huge-128k-online` — Best quality

## Usage Examples
- "What are the known bugs in flutter_gemma 0.1.4 on iOS?"
- "How do I configure multi-tenant ERPNext v16 with Nginx?"
- "What's the best dark psychology YouTube niche in 2025?"

## Applies To
- Quick technical Q&A across all projects
- `mindivo` — Trend research
- `erp-server` — ERPNext troubleshooting

## Links
- GitHub: https://github.com/ppl-ai/modelcontextprotocol
- API Settings: https://www.perplexity.ai/settings/api
- Docs: https://docs.perplexity.ai
