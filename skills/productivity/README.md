# Skills — Productivity

Automation, scheduling, notifications, and workflow skills for Axiom OS.

---

## Automation (`automation/`)

| Skill | Use Case |
|---|---|
| `bash-automation.md` | Shell scripts for repetitive server tasks |
| `python-automation.md` | Python scripts for data processing, APIs |
| `github-actions-auto.md` | Automated workflows triggered by events |

## Scheduling (`scheduling/`)

| Skill | Use Case |
|---|---|
| `cron-jobs.md` | Linux cron for scheduled server tasks |
| `frappe-scheduler.md` | ERPNext scheduled tasks via bench |
| `content-calendar.md` | YouTube/social media publishing schedule |

## Notifications (`notifications/`)

| Skill | Use Case |
|---|---|
| `fcm-push.md` | Firebase Cloud Messaging for Flutter apps |
| `email-alerts.md` | Email notifications from ERPNext / scripts |
| `telegram-bot.md` | Telegram bot for server alert notifications |

---

## FCM Push Notification (Hassan's Pattern)

```python
# Using firebase-admin SDK in Frappe
import firebase_admin
from firebase_admin import credentials, messaging

def send_push(token, title, body, data=None):
    message = messaging.Message(
        token=token,
        notification=messaging.Notification(title=title, body=body),
        data=data or {},
        android=messaging.AndroidConfig(priority="high"),
        apns=messaging.APNSConfig(
            payload=messaging.APNSPayload(
                aps=messaging.Aps(sound="default")
            )
        )
    )
    return messaging.send(message)
```

---

## MCP Agents for Productivity

```bash
# Notion MCP — task and project management
claude mcp add notion

# Google Calendar MCP — schedule management  
claude mcp add google-calendar

# Slack MCP — team notifications
claude mcp add slack
```

---

*Axiom OS Skills — Productivity Category*
