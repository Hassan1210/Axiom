# 21st.dev Magic MCP

**Type:** MCP Server
**Category:** frontend / design
**Status:** available

## What It Does
AI-powered UI component generation. Describe a component in natural language and get production-ready React/Tailwind/shadcn components instantly. Integrates directly into Claude Code as an MCP server.

## Install
```bash
npx @21st-dev/magic@latest
```

Or add to Claude Code settings:
```json
{
  "mcpServers": {
    "21st-dev-magic": {
      "command": "npx",
      "args": ["-y", "@21st-dev/magic@latest"],
      "env": {
        "TWENTY_FIRST_API_KEY": "your_api_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
TWENTY_FIRST_API_KEY=your_key_here  # Get from: https://21st.dev/dashboard
```

## Usage Examples
- "Generate a Flutter-style card component with dark mode support"
- "Create a responsive sidebar nav with Tailwind"
- "Build a data table component with sorting and pagination"

## Applies To
- `fieldcx-app` — Flutter UI components reference
- `logsnx-mobile` — Flutter UI components reference
- Any web dashboard frontends

## Links
- GitHub: https://github.com/21st-dev/magic-mcp
- Docs: https://21st.dev/docs
- API Keys: https://21st.dev/dashboard
