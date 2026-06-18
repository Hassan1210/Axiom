# Python Global Packages — Hassan's Machine

**Type:** Environment Reference
**Category:** code / tools
**Last Scanned:** 2026-06-11

## Python Versions
```
Python 3.14.2  — /home/hassan/.local/bin/python3 (primary)
Python 3.12.x  — system python3 (Ubuntu 24 default)
Python 3.10.x  — installed alongside
```

## Key Installed Packages
```
frappe-bench    5.23.0   — Frappe CLI (bench commands)
docker          5.0.3    — Docker Python SDK
docker-compose  1.29.2   — Docker Compose
GitPython       3.1.44   — Git operations in Python
paramiko        2.12.0   — SSH client (server automation)
requests        2.31.0   — HTTP client
python-dotenv   1.0.1    — .env file loading
Pillow          10.2.0   — Image processing
PyYAML          6.0.1    — YAML parsing
rich            13.7.1   — Beautiful terminal output
cryptography    41.0.7   — Encryption/SSL
bcrypt          3.2.2    — Password hashing
PyJWT           2.7.0    — JWT tokens
python-crontab  2.6.0    — Cron job management
```

## Critical: frappe-bench is installed!
```bash
# frappe-bench 5.23.0 is available globally
bench --version    # → 5.23.0
bench new-site ... # etc.
```

## Notes
- `frappe-bench` being installed means Frappe development is set up on this machine
- `docker` SDK installed — can control Docker via Python scripts
- `paramiko` available — SSH into remote servers programmatically
- MariaDB client also installed (can connect to ERPNext DB)

## Applies To
- `trace-issue` — Frappe development (frappe-bench)
- `erp-server` — Remote management (paramiko, requests)
