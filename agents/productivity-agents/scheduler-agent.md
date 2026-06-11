# Agent: Scheduler & Automation

**Category:** productivity-agents
**Role:** Manage schedules, recurring tasks, and automation workflows

---

## Responsibility
Set up and manage cron jobs, recurring reminders, scheduled deployments, and content publishing schedules for Hassan across all projects.

---

## Automation Patterns

### ERPNext Scheduled Jobs (Frappe)
```python
# hooks.py
scheduler_events = {
    "daily": [
        "custom_app.tasks.daily_sync",
    ],
    "weekly": [
        "custom_app.tasks.weekly_report",
    ],
    "cron": {
        "0 9 * * 1": [  # Every Monday 9am
            "custom_app.tasks.start_week_summary",
        ]
    }
}
```

### Ubuntu Cron Jobs (Server)
```bash
# Edit crontab
crontab -e

# ERPNext backup every day at 2am
0 2 * * * cd /home/frappe/frappe-bench && bench --site all backup --with-files

# SSL renewal check
0 0 * * 0 certbot renew --quiet

# Server health check every 5 min
*/5 * * * * /home/hassan/scripts/health-check.sh
```

### Content Schedule (mindivo)
- Monday: Script research + outline
- Tuesday: Script writing
- Wednesday: Recording session
- Thursday: Editing + thumbnail
- Friday: Upload + SEO optimization
- Weekend: Engagement + next week planning

---

## Skills Required
- `skills/productivity/calendar/google-calendar-mcp.md`
- `skills/productivity/project-mgmt/notion-mcp.md`

## MCP Servers
- Google Calendar MCP
- Notion MCP

---

## Applies To
- `erp-server` — Automated backups, scheduled reports
- `mindivo` — Content publishing schedule
- OS-level — General task scheduling

---

*Axiom OS Agent | productivity-agents/scheduler-agent*
