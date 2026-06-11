# Skill: Frappe / ERPNext

**Category:** code/frameworks
**Version:** ERPNext v15 / v16
**Owner:** Hassan

---

## Purpose

Customize, extend, and manage Frappe-based ERPNext applications. Build custom Doctypes, hooks, APIs, and multi-tenant server configurations.

---

## Server Architecture

```
/home/frappe/
└── frappe-bench/
    ├── apps/
    │   ├── frappe/
    │   ├── erpnext/
    │   ├── fieldcx/
    │   ├── trace-issue-tracker/
    │   ├── stock-management/
    │   ├── hr-tool/
    │   └── logsnx-telephony/
    ├── sites/
    │   ├── lbe.fieldcx.tech/
    │   ├── valley.logsnx.com/
    │   ├── logsnx.traceissue.com/
    │   ├── lbe.fieldcx.io/
    │   └── qaqc.traceissue.com/
    └── config/
```

---

## Common Commands

```bash
# Bench operations
bench start
bench restart
bench update --no-backup
bench migrate

# Site management
bench new-site <site-name> --db-name <db>
bench --site <site> install-app <app>
bench --site <site> migrate
bench --site <site> restore <backup.sql.gz>

# App management
bench get-app <app-name> <git-url>
bench pip install -e apps/<app-name>

# SSL
sudo certbot --nginx -d <domain>

# Scheduler
bench --site <site> enable-scheduler
bench --site <site> run-patches
```

---

## Custom App Structure

```
my-app/
├── my_app/
│   ├── __init__.py
│   ├── hooks.py           ← app hooks (events, overrides)
│   ├── patches.txt        ← migration patches list
│   ├── my_module/
│   │   ├── doctype/
│   │   │   └── my_doctype/
│   │   │       ├── my_doctype.json
│   │   │       ├── my_doctype.py
│   │   │       └── my_doctype.js
│   │   └── api/
│   │       └── endpoints.py
│   └── public/
│       └── js/
└── setup.py
```

---

## Common Hooks (`hooks.py`)

```python
app_name = "my_app"
app_title = "My App"
app_publisher = "Hassan"

# Override existing DocType controller
override_doctype_class = {
    "Sales Invoice": "my_app.overrides.CustomSalesInvoice"
}

# Document events
doc_events = {
    "Work Order": {
        "on_submit": "my_app.events.work_order.on_submit"
    }
}

# Scheduled tasks
scheduler_events = {
    "daily": ["my_app.tasks.daily_sync"]
}
```

---

## API Endpoint Pattern

```python
import frappe
from frappe import _

@frappe.whitelist()
def get_data(filters=None):
    if not frappe.has_permission("My DocType", "read"):
        frappe.throw(_("Not permitted"), frappe.PermissionError)
    
    return frappe.get_list(
        "My DocType",
        filters=frappe.parse_json(filters) if filters else {},
        fields=["name", "status", "creation"],
        order_by="creation desc"
    )
```

---

## Known Issues

- MariaDB row size limit: set `innodb_strict_mode=0` for large schemas
- HRMS patch conflicts on v16 migration: resolve manually in `patches.txt`
- Multi-tenant nginx config must set `server_name` per site

---

## Client List

| Site | App | Status |
|---|---|---|
| lbe.fieldcx.tech | fieldcx, v16-whitelabel | Active |
| valley.logsnx.com | stock-management, logsnx-telephony | Active |
| logsnx.traceissue.com | trace-issue-tracker | Active |
| lbe.fieldcx.io | fieldcx | Active |
| qaqc.traceissue.com | trace-issue-tracker | Active |

---

*Axiom OS Skill | Last updated: 2026*
