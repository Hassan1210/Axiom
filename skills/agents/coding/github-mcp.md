# GitHub MCP Server

**Type:** MCP Server
**Category:** code / development
**Status:** available

## What It Does
Official GitHub MCP server by GitHub/Anthropic. Gives Claude direct access to GitHub — search repos, read files, create/update issues and PRs, manage branches, run workflows, and more. The most essential coding MCP.

## Install
```bash
npx @modelcontextprotocol/server-github
```

Claude Code config (`~/.claude/settings.json`):
```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "ghp_your_token_here"
      }
    }
  }
}
```

## Required Env Vars
```
GITHUB_PERSONAL_ACCESS_TOKEN=ghp_xxxx
# Get from: https://github.com/settings/tokens
# Scopes needed: repo, read:org, read:user, workflow
```

## Capabilities
- Search code, repos, issues, PRs
- Read file contents from any branch
- Create/update issues and PRs
- List commits, branches, releases
- Trigger GitHub Actions workflows
- Manage repo contents (create, update, delete files)

## Usage Examples
- "Search for how ERPNext handles leave allocation in their codebase"
- "Create a PR for the current branch in fieldcx-app"
- "List all open issues in logsnx-mobile repo"
- "Read the pubspec.yaml from the main branch"

## Applies To
- All projects (universal — version control for everything)
- `logsnx-mobile`, `fieldcx-app`, `trace-issue`, `erp-server`, `mindivo`

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/github
- Personal Access Tokens: https://github.com/settings/tokens
- Docs: https://modelcontextprotocol.io/servers/github
