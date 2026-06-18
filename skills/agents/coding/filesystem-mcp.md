# Filesystem MCP Server

**Type:** MCP Server
**Category:** code / development
**Status:** available

## What It Does
Gives Claude secure, scoped access to the local filesystem. Read, write, search, and manage files within allowed directories. Essential for working with local project files, logs, and configs without constantly copy-pasting.

## Install
```bash
npx @modelcontextprotocol/server-filesystem /path/to/allowed/dir
```

Claude Code config:
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/home/hassan/Documents",
        "/home/hassan/projects"
      ]
    }
  }
}
```

## Required Env Vars
```
# None — directories are passed as arguments
# Only directories listed in args are accessible (security boundary)
```

## Capabilities
- Read any file in allowed directories
- Write/create files
- List directory contents
- Search files by pattern
- Move/copy/delete files

## Usage Examples
- "Read all .dart files in lib/features/ and find where BLoC is used"
- "List all migration files in the ERPNext custom app"
- "Search for TODO comments across the entire project"

## Applies To
- All projects — local file management
- `erp-server` — Reading Frappe app configs and logs
- `logsnx-mobile` / `fieldcx-app` — Flutter project navigation

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem
