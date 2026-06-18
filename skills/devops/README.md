# Skills — DevOps

Server management, Docker, CI/CD, and cloud provider skills for Axiom OS.

---

## Docker (`docker/`)

| Skill | Use Case |
|---|---|
| `docker-basics.md` | Dockerfile, compose, volumes |
| `nginx-proxy.md` | Reverse proxy setup for multi-tenant |
| `certbot-ssl.md` | SSL certificate management with Let's Encrypt |

## CI/CD (`ci-cd/`)

| Skill | Use Case |
|---|---|
| `github-actions.md` | Automated build, test, deploy pipelines |
| `flutter-cicd.md` | Flutter app build + App Store / Play Store deploy |
| `frappe-deploy.md` | ERPNext bench deploy automation |

## Cloud Providers (`cloud-providers/`)

| Skill | Use Case |
|---|---|
| `digitalocean.md` | Droplet management, DNS, firewall |
| `firebase.md` | Firebase hosting, functions, storage |
| `github.md` | Repo management, Actions, Pages |

---

## Common Server Commands

```bash
# Nginx
sudo nginx -t                          # test config
sudo systemctl reload nginx            # reload
sudo nano /etc/nginx/sites-available/<site>

# SSL (Certbot)
sudo certbot --nginx -d domain.com
sudo certbot renew --dry-run

# UFW Firewall
sudo ufw status
sudo ufw allow 443/tcp
sudo ufw allow 80/tcp

# Process management
sudo supervisorctl status
sudo supervisorctl restart frappe:

# Logs
tail -f /var/log/nginx/error.log
bench --site <site> show-pending-patches
```

---

## MCP Agents for DevOps

```bash
# GitHub MCP — repo, issues, PRs, Actions
claude mcp add github

# Docker MCP — container management
claude mcp add docker
```

---

*Axiom OS Skills — DevOps Category*
