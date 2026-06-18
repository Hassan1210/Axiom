# Slack MCP Server

**Type:** MCP Server
**Category:** productivity / communication
**Status:** available

## What It Does
Send messages, read channels, and manage Slack workspaces through Claude. Useful for team notifications, deployment announcements, and monitoring alerts.

## Install
```bash
npx @modelcontextprotocol/server-slack
```

Claude Code config:
```json
{
  "mcpServers": {
    "slack": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-slack"],
      "env": {
        "SLACK_BOT_TOKEN": "xoxb-your-token",
        "SLACK_TEAM_ID": "T0XXXXXXX"
      }
    }
  }
}
```

## Required Env Vars
```
SLACK_BOT_TOKEN=xoxb-xxxx
# Create Slack app: https://api.slack.com/apps
# Add Bot Token Scopes: channels:read, chat:write, files:read

SLACK_TEAM_ID=T0XXXXXXX
# Found in Slack workspace URL
```

## Capabilities
- Send messages to channels or DMs
- Read channel history
- List channels and members
- Upload files
- React to messages

## Usage Examples
- "Send deployment complete message to #deployments channel"
- "Notify #team about the erp-server maintenance window"
- "Read the last 10 messages in #bugs channel"

## Applies To
- Team communication for client projects
- `erp-server` — Deployment notifications

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/slack
- Slack API: https://api.slack.com/apps
