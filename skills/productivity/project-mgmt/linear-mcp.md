# Linear MCP Server

**Type:** MCP Server
**Category:** productivity / project management
**Status:** available

## What It Does
Manage Linear issues, projects, and cycles through Claude. Create tasks, update statuses, search issues, and manage sprints — all from Claude Code. Linear is a fast, modern issue tracker used by eng teams.

## Install
```bash
npx linear-mcp-server
```

Claude Code config:
```json
{
  "mcpServers": {
    "linear": {
      "command": "npx",
      "args": ["-y", "linear-mcp-server"],
      "env": {
        "LINEAR_API_KEY": "lin_api_your_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
LINEAR_API_KEY=lin_api_xxxx
# Get from: https://linear.app/settings/api
# Personal API key → create
```

## Capabilities
- Create/update/close issues
- Search issues by query
- List issues by project/cycle/assignee
- Update issue status and priority
- Add comments to issues
- Manage projects and cycles (sprints)

## Usage Examples
- "Create a Linear issue for the fieldcx-app offline sync bug"
- "List all in-progress issues in the logsnx-mobile project"
- "Mark issue LNX-42 as done"
- "Add a comment to the erp-server migration issue"

## Applies To
- All projects — issue and sprint tracking

## Links
- GitHub: https://github.com/linear/linear-mcp
- API Keys: https://linear.app/settings/api
- Docs: https://developers.linear.app
