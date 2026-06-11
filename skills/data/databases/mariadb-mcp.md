# MariaDB MCP Server

**Type:** MCP Server
**Category:** data / databases
**Status:** available

## What It Does
Direct MariaDB/MySQL database access through Claude. Run queries, inspect schemas, manage tables, and analyze data — critical for ERPNext database work since ERPNext uses MariaDB as its database.

## Install
```bash
npx @benborla29/mcp-server-mysql
```

Claude Code config:
```json
{
  "mcpServers": {
    "mariadb": {
      "command": "npx",
      "args": ["-y", "@benborla29/mcp-server-mysql"],
      "env": {
        "MYSQL_HOST": "127.0.0.1",
        "MYSQL_PORT": "3306",
        "MYSQL_USER": "frappe",
        "MYSQL_PASSWORD": "your_password",
        "MYSQL_DATABASE": "_self"
      }
    }
  }
}
```

## Required Env Vars
```
MYSQL_HOST=127.0.0.1
MYSQL_PORT=3306
MYSQL_USER=frappe          # ERPNext DB user
MYSQL_PASSWORD=xxxx        # From bench/sites/common_site_config.json
MYSQL_DATABASE=_self       # Or specific site DB name
# DB name format in ERPNext: _b0cbcdfb7fxx (hashed from site name)
```

## Finding ERPNext DB Credentials
```bash
cat ~/frappe-bench/sites/common_site_config.json
# Look for: db_user, db_password
bench --site mysite.com set-config db_password  # Change if needed
```

## Usage Examples
- "Show all ERPNext leave applications submitted this month"
- "Count employees per department in the HR module"
- "Find all failed payment entries from last week"
- "Show the schema of the tabEmployee table"
- "Run a query to find duplicate employee records"

## Applies To
- `erp-server` — Primary — all ERPNext database operations
- `trace-issue` — Issue tracker data analysis

## Links
- GitHub: https://github.com/benborla29/mcp-server-mysql
- MariaDB Docs: https://mariadb.com/kb/en/documentation
- ERPNext DB Structure: https://discuss.frappe.io/t/erpnext-database-structure
