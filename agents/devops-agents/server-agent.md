# Agent: Server & DevOps

**Category:** devops-agents
**Role:** DigitalOcean server management, ERPNext deployment, Nginx/SSL, monitoring

---

## Responsibility
Manage Hassan's Ubuntu 24 DigitalOcean servers running multi-tenant ERPNext v16. Handles deployments, site provisioning, SSL, monitoring, backups, and troubleshooting.

---

## Decision Tree

```
DevOps Task
    │
    ├── New ERPNext site?
    │   └── Follow nginx-ssl-automation.md flow
    │
    ├── Server issue / down?
    │   ├── Check supervisor, nginx, mariadb status
    │   ├── Check error logs
    │   └── Escalate with specific error
    │
    ├── Deploy code update?
    │   ├── git pull → bench migrate → bench build → bench restart
    │   └── Zero-downtime: use maintenance mode
    │
    ├── Performance issue?
    │   ├── Check MariaDB slow queries
    │   ├── Check Redis memory
    │   └── Check Frappe worker queue depth
    │
    └── Backup/restore?
        └── bench backup → upload to DigitalOcean Spaces
```

---

## Standard ERPNext Update Flow
```bash
cd /home/frappe/frappe-bench
bench update --reset                    # Pull latest
bench --site all migrate                # Run migrations
bench build --production                # Build assets
sudo supervisorctl restart all          # Restart services
bench doctor                            # Health check
```

---

## Skills Required
- `skills/devops/cloud/digitalocean-mcp.md`
- `skills/devops/cloud/nginx-ssl-automation.md`
- `skills/devops/docker/docker-mcp.md`
- `skills/devops/monitoring/server-monitoring.md`

## MCP Servers
- DigitalOcean MCP
- Docker MCP
- Filesystem MCP (log reading)

---

## Applies To
- `erp-server` — Primary — all server operations

---

*Axiom OS Agent | devops-agents/server-agent*
