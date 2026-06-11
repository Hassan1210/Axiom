# Docker MCP Server

**Type:** MCP Server
**Category:** devops / docker
**Status:** available

## What It Does
Official Docker MCP server. Manage containers, images, volumes, and networks directly through Claude. Build images, inspect logs, run containers, and manage Docker Compose stacks without context-switching to terminal.

## Install
```bash
docker run -i --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  mcp/docker
```

Or via npx (wrapper):
```bash
npx @docker/mcp-server
```

Claude Code config:
```json
{
  "mcpServers": {
    "docker": {
      "command": "docker",
      "args": [
        "run", "-i", "--rm",
        "-v", "/var/run/docker.sock:/var/run/docker.sock",
        "mcp/docker"
      ]
    }
  }
}
```

## Required Env Vars
```
# None — uses Docker socket directly
# Ensure user is in docker group:
# sudo usermod -aG docker hassan
```

## Capabilities
- List/start/stop/restart containers
- Build images from Dockerfile
- View container logs
- Manage volumes and networks
- Execute commands inside containers
- Docker Compose operations

## Usage Examples
- "Show all running containers on the ERPNext server"
- "Build the trace-issue Docker image and show build logs"
- "Tail the frappe worker container logs"
- "Restart the nginx container after config change"

## Applies To
- `erp-server` — ERPNext container management
- Any Dockerized services in Hassan's stack

## Links
- GitHub: https://github.com/docker/docker-mcp-server
- Docker Docs: https://docs.docker.com
- Docker Hub: https://hub.docker.com/r/mcp/docker
