# DigitalOcean MCP Server

**Type:** MCP Server
**Category:** devops / cloud
**Status:** available

## What It Does
Manage DigitalOcean infrastructure through Claude. Control Droplets, Domains, Databases, Spaces (S3-compatible storage), Firewalls, and Load Balancers. Hassan's primary cloud provider for ERPNext hosting.

## Install
```bash
npx @digitalocean/mcp
```

Or community server:
```bash
npx digitalocean-mcp-server
```

Claude Code config:
```json
{
  "mcpServers": {
    "digitalocean": {
      "command": "npx",
      "args": ["-y", "digitalocean-mcp-server"],
      "env": {
        "DIGITALOCEAN_TOKEN": "dop_v1_your_token_here"
      }
    }
  }
}
```

## Required Env Vars
```
DIGITALOCEAN_TOKEN=dop_v1_xxxx
# Get from: https://cloud.digitalocean.com/account/api/tokens
# Scope: Read + Write
```

## Capabilities
- List/create/destroy Droplets
- Manage DNS records and domains
- Monitor Droplet metrics
- Manage DigitalOcean Spaces (object storage)
- Firewall rule management
- Database cluster management

## Usage Examples
- "List all Droplets and their current status"
- "Add a DNS A record for new.erp.hassandev.com"
- "Show bandwidth usage for the ERPNext Droplet this month"
- "Create a new Spaces bucket for ERPNext backups"
- "Update firewall rules to allow port 8080"

## Applies To
- `erp-server` — Primary — all ERPNext infrastructure management
- Cloud storage for all projects

## Links
- GitHub: https://github.com/digitalocean/digitalocean-mcp
- API Tokens: https://cloud.digitalocean.com/account/api/tokens
- DO API Docs: https://docs.digitalocean.com/reference/api/api-reference
