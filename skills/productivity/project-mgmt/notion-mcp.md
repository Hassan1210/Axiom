# Notion MCP Server

**Type:** MCP Server
**Category:** productivity / project management
**Status:** available

## What It Does
Full Notion workspace access through Claude. Read/write pages, databases, and blocks. Manage project docs, meeting notes, wikis, and task databases without leaving Claude Code.

## Install
```bash
npx @notionhq/notion-mcp-server
```

Claude Code config:
```json
{
  "mcpServers": {
    "notion": {
      "command": "npx",
      "args": ["-y", "@notionhq/notion-mcp-server"],
      "env": {
        "NOTION_API_KEY": "secret_your_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
NOTION_API_KEY=secret_xxxx
# Get from: https://www.notion.so/my-integrations
# Create integration → copy "Internal Integration Token"
# Then share target pages/DBs with your integration
```

## Capabilities
- Search pages and databases
- Read page content
- Create and update pages
- Query database entries with filters
- Create database entries
- Append blocks to pages

## Usage Examples
- "Add a task to my Notion project database for fieldcx-app"
- "Read the meeting notes from yesterday's Notion page"
- "Create a new page in the mindivo content calendar with today's script"
- "Query all tasks with status 'In Progress' from the project DB"

## Applies To
- All projects — project management and documentation
- `mindivo` — Content calendar management

## Links
- GitHub: https://github.com/makenotion/notion-mcp-server
- Integration Setup: https://www.notion.so/my-integrations
- API Docs: https://developers.notion.com
