# Nginx + SSL Automation Skills

**Type:** Skill / Knowledge
**Category:** devops / cloud
**Status:** available

## What It Does
Automate Nginx configuration and SSL certificate management for ERPNext multi-tenant setups on Ubuntu 24. Covers Certbot automation, virtual host templates, and reverse proxy config.

## SSL Auto-Renewal (Certbot)

### Setup
```bash
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d site.hassandev.com -d www.site.hassandev.com
```

### Auto-renewal (already configured by certbot)
```bash
sudo certbot renew --dry-run    # Test renewal
# Cron auto-runs: /etc/cron.d/certbot
```

### Wildcard SSL (for multi-tenant)
```bash
sudo certbot certonly --manual \
  --preferred-challenges dns \
  -d "*.hassandev.com" -d "hassandev.com"
```

## ERPNext Nginx Config Template
```nginx
# /etc/nginx/conf.d/erpnext-site.conf
upstream frappe-site {
    server 127.0.0.1:8000;
}

server {
    listen 80;
    server_name mysite.com;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl http2;
    server_name mysite.com;

    ssl_certificate /etc/letsencrypt/live/mysite.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mysite.com/privkey.pem;

    location / {
        proxy_pass http://frappe-site;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    location /assets {
        alias /home/frappe/frappe-bench/sites/mysite.com/public;
        expires 1y;
    }
}
```

## New Site Setup Flow
```bash
# 1. Create bench site
bench new-site newsite.com --mariadb-root-password PASS --admin-password PASS

# 2. Install ERPNext
bench --site newsite.com install-app erpnext

# 3. Configure Nginx
bench setup nginx
sudo nginx -t && sudo systemctl reload nginx

# 4. SSL Certificate
sudo certbot --nginx -d newsite.com

# 5. Enable scheduler
bench --site newsite.com enable-scheduler
```

## Applies To
- `erp-server` — All site provisioning and SSL management

## Links
- Certbot: https://certbot.eff.org
- Nginx Docs: https://nginx.org/en/docs
- ERPNext Production Setup: https://frappeframework.com/docs/v14/user/en/installation
