# Known Remote Servers

**Type:** Environment Reference
**Category:** cloud / env
**Last Updated:** 2026-06-11
**Note:** SSH known_hosts entries are hashed — exact server IPs/hostnames not exposed here. Add servers as you connect to them.

## Server Registry

Add your servers here as you use them:

| Server Name | Purpose | Provider | OS | Notes |
|---|---|---|---|---|
| erp-server-01 | Multi-tenant ERPNext v16 | DigitalOcean | Ubuntu 24 | Primary ERP server |
| *(add more)* | | | | |

## How to Connect (Remote SSH)
```bash
# Direct SSH
ssh root@your-server-ip
ssh hassan@your-server-ip

# VS Code Remote SSH
# Add to ~/.ssh/config:
Host erp-server
    HostName YOUR_SERVER_IP
    User root
    IdentityFile ~/.ssh/id_rsa
```

## SSH Config Template
```
# ~/.ssh/config
Host erp-server
    HostName XXX.XXX.XXX.XXX
    User root
    Port 22
    IdentityFile ~/.ssh/id_rsa

Host erp-server-2
    HostName XXX.XXX.XXX.XXX
    User root
    Port 22
    IdentityFile ~/.ssh/id_rsa
```

## Security Notes
- Private SSH keys are NEVER stored in Axiom OS
- Server IPs go in `cloud/env/<project>.env` (gitignored)
- This file stores server names/purposes only
