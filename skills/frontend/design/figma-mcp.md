# Figma MCP Server

**Type:** MCP Server
**Category:** frontend / design
**Status:** available

## What It Does
Read Figma files, extract design tokens, inspect components, and convert Figma designs to code. Allows Claude to directly access your Figma workspace — read frames, components, styles, and variables.

## Install
```bash
npx figma-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "figma": {
      "command": "npx",
      "args": ["-y", "figma-mcp"],
      "env": {
        "FIGMA_ACCESS_TOKEN": "your_personal_access_token"
      }
    }
  }
}
```

## Required Env Vars
```
FIGMA_ACCESS_TOKEN=your_token  # Get from: Figma → Settings → Account → Personal Access Tokens
```

## Usage Examples
- "Read the design tokens from my Figma file [URL]"
- "Convert this Figma frame to Flutter widgets"
- "Extract all color styles from the design system file"
- "List all components in the [file] Figma file"

## Applies To
- `logsnx-mobile` — Convert Figma mockups to Flutter widgets
- `fieldcx-app` — Extract design system tokens for Riverpod UI
- `mindivo` — Extract thumbnail layout specs

## Links
- GitHub: https://github.com/GLips/Figma-Context-MCP
- Figma API: https://www.figma.com/developers/api
- Access Tokens: https://www.figma.com/settings (Account tab)
