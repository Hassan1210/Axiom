# Memory MCP Server

**Type:** MCP Server
**Category:** code / development
**Status:** available

## What It Does
Persistent knowledge graph memory for Claude. Stores entities, relations, and observations that persist across conversations. Use to remember project-specific patterns, bug fixes, architecture decisions, and team conventions.

## Install
```bash
npx @modelcontextprotocol/server-memory
```

Claude Code config:
```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"],
      "env": {
        "MEMORY_FILE_PATH": "/home/hassan/Documents/Axiom/axiom/logs/memory.json"
      }
    }
  }
}
```

## Required Env Vars
```
MEMORY_FILE_PATH=/path/to/memory.json  # Where to persist the knowledge graph
```

## Usage Examples
- "Remember that logsnx-mobile uses flutter_gemma 0.1.4 and crashes on iOS 17.4 during teardown"
- "Store that ERPNext bench uses Python 3.11 on this server"
- "What do you remember about the fieldcx-app offline sync bug?"

## Applies To
- All projects — cross-session context retention
- Especially useful for `erp-server` (complex server configs)

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/memory
