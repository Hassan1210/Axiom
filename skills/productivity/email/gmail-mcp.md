# Gmail MCP Server

**Type:** MCP Server
**Category:** productivity / email
**Status:** available

## What It Does
Read, send, search, and manage Gmail through Claude. Handle client emails, server alerts, and automated email workflows without leaving Claude Code.

## Install
```bash
npx @modelcontextprotocol/server-gmail
```

Claude Code config:
```json
{
  "mcpServers": {
    "gmail": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-gmail"],
      "env": {
        "GMAIL_CLIENT_ID": "your_client_id",
        "GMAIL_CLIENT_SECRET": "your_client_secret",
        "GMAIL_REFRESH_TOKEN": "your_refresh_token"
      }
    }
  }
}
```

## Required Env Vars
```
GMAIL_CLIENT_ID=xxxx.apps.googleusercontent.com
GMAIL_CLIENT_SECRET=GOCSPX-xxxx
GMAIL_REFRESH_TOKEN=1//xxxx
# Setup: https://console.cloud.google.com → Gmail API → OAuth credentials
# Scopes: https://www.googleapis.com/auth/gmail.modify
```

## Capabilities
- Search emails with Gmail query syntax
- Read email content and attachments
- Send emails with CC/BCC
- Label and archive emails
- Create drafts
- List inbox/sent/drafts

## Usage Examples
- "Search for any emails about ERPNext downtime from clients"
- "Send a deployment notification email to team"
- "Draft a reply to the client asking about fieldcx-app status"
- "Find all unread emails from the last 24 hours"

## Applies To
- OS-level — client communication, server alerts
- `erp-server` — Client site communications

## Links
- Gmail API: https://developers.google.com/gmail/api
- Google Cloud Console: https://console.cloud.google.com
