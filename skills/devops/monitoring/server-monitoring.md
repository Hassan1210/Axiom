# Server Monitoring Skills & Tools

**Type:** Skill / Knowledge
**Category:** devops / monitoring
**Status:** available

## What It Does
Monitor Ubuntu 24 server health, ERPNext performance, Nginx status, and alert on issues. Covers both built-in Linux tools and external monitoring services.

## Built-in Monitoring (No MCP needed)

### System Health
```bash
# CPU, Memory, Disk
htop                          # Interactive process monitor
free -h                       # Memory usage
df -h                         # Disk usage
iostat -x 1                   # I/O stats

# Process status
sudo supervisorctl status      # All Frappe services
sudo systemctl status nginx    # Nginx status
sudo systemctl status mariadb  # MariaDB status

# ERPNext specific
bench doctor                   # ERPNext health check
bench --site site.com show-pending-doc-transfer-errors
```

### Log Monitoring
```bash
# Frappe logs
tail -f /home/frappe/frappe-bench/logs/frappe.log
tail -f /home/frappe/frappe-bench/logs/worker.error.log
tail -f /home/frappe/frappe-bench/logs/scheduler.error.log

# Nginx logs
tail -f /var/log/nginx/access.log
tail -f /var/log/nginx/error.log

# System journal
sudo journalctl -f -u nginx
sudo journalctl -f -u mariadb
```

## External Monitoring Options

### Uptime Kuma (Self-hosted, recommended)
```bash
docker run -d --restart=always \
  -p 3001:3001 \
  -v uptime-kuma:/app/data \
  --name uptime-kuma \
  louislam/uptime-kuma:1
```
Access: http://server-ip:3001

### Netdata (Real-time metrics)
```bash
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
```
Access: http://server-ip:19999

### Frappe Insights (Built-in ERPNext analytics)
```bash
bench install-app insights
```

## Alert Setup (via ERPNext Notifications)
- CPU > 80% for 5 min → Email/SMS alert
- Disk > 85% → Alert
- Service down → Alert

## Applies To
- `erp-server` — Primary server monitoring
- All DigitalOcean Droplets

## Links
- Uptime Kuma: https://github.com/louislam/uptime-kuma
- Netdata: https://www.netdata.cloud
- Frappe Insights: https://github.com/frappe/insights
