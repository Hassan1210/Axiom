# System Tools — Hassan's Dev Machine

**Type:** Environment Reference
**Category:** devops / system
**Last Scanned:** 2026-06-11
**OS:** Ubuntu 24.04.1 LTS (Kernel 6.17.0-35-generic)

## Installed Tools

| Tool | Version | Path | Notes |
|---|---|---|---|
| Git | 2.43.0 | /usr/bin/git | Global config: hassan210 |
| Docker | 29.1.3 | /usr/bin/docker | Docker Engine |
| Docker Compose | 1.29.2 | (via apt) | docker-compose v1 CLI |
| Node.js | v18.19.1 | /usr/local/bin/node | System node |
| Node.js (NVM) | v22.14.0 | ~/.nvm/versions/node/v22.14.0 | NVM managed |
| Python3 | 3.14.2 | ~/.local/bin/python3 | Primary |
| Python3 (system) | 3.12.x | /usr/bin/python3 | Ubuntu system |
| MariaDB client | 10.11.13 | /usr/bin/mysql | Local client only |
| curl | 8.5.0 | /usr/bin/curl | HTTP client |

## NOT installed locally (remote only)
- nginx — only on DigitalOcean servers
- certbot — only on DigitalOcean servers
- Redis — only on ERPNext server

## Git Global Config
```
user.name:  hassan210
user.email: hch33129@gmail.com
pull.rebase: false
pull.ff:    only
push.autoSetupRemote: true
```

## Docker Status
```bash
# Docker is installed and available
docker --version  # 29.1.3
docker-compose --version  # 1.29.2

# Add to docker group if not already:
sudo usermod -aG docker hassan
```

## NVM Usage
```bash
# List available versions
nvm ls

# Use Node v22 (for latest MCP servers)
nvm use 22

# Use npx from NVM node (for MCP configs)
/home/hassan/.nvm/versions/node/v22.14.0/bin/npx
```

## Applies To
- All projects — this is Hassan's primary dev machine
