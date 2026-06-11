# Python / Frappe / ERPNext MCP Tools & Skills

**Type:** Skill / Knowledge
**Category:** code / Frappe
**Status:** available

## What It Does
Reference skill for Python, Frappe framework, and ERPNext customization within Axiom. Covers Frappe CLI, custom app patterns, bench management, and MCP integrations.

## Key MCP Integrations for Frappe
- **Context7** — Pull live Frappe/ERPNext docs
- **GitHub MCP** — Access frappe/frappe and frappe/erpnext repos
- **Filesystem MCP** — Navigate bench and app directories
- **MariaDB MCP** — Query ERPNext database directly

## Frappe App Structure
```
custom_app/
├── custom_app/
│   ├── custom_app/
│   │   ├── doctype/           # Custom doctypes
│   │   │   └── my_doctype/
│   │   │       ├── my_doctype.json
│   │   │       └── my_doctype.py
│   │   ├── api.py             # REST API endpoints
│   │   ├── hooks.py           # Frappe hooks
│   │   └── utils.py           # Utilities
│   └── config/
│       ├── desktop.py
│       └── docs.py
├── setup.py
└── MANIFEST.in
```

## Key Frappe Patterns

### Custom Doctype
```python
import frappe
from frappe.model.document import Document

class MyDoctype(Document):
    def before_save(self):
        self.validate_fields()
    
    def on_submit(self):
        frappe.db.set_value('MyDoctype', self.name, 'status', 'Submitted')
```

### REST API Endpoint
```python
@frappe.whitelist()
def get_employee_data(employee_id):
    return frappe.get_doc('Employee', employee_id)
```

### Background Jobs
```python
from frappe.utils.background_jobs import enqueue

enqueue('custom_app.tasks.run_sync', queue='long', timeout=300)
```

## Bench Commands
```bash
bench new-app my_app            # Create new Frappe app
bench install-app my_app        # Install on site
bench migrate                   # Run DB migrations
bench build                     # Build assets
bench restart                   # Restart all services
bench --site mysite.com console # Python console
bench execute custom_app.utils.sync_data  # Run function
```

## Applies To
- `trace-issue` — ERPNext issue tracker Frappe app
- `erp-server` — Multi-tenant ERPNext v16 server

## Links
- Frappe Docs: https://frappeframework.com/docs
- ERPNext: https://erpnext.com/docs
- Frappe GitHub: https://github.com/frappe/frappe
