# PostgreSQL MCP Server

**Type:** MCP Server
**Category:** data / databases
**Status:** available

## What It Does
Direct PostgreSQL database access through Claude. Run queries, inspect schemas, manage tables, and analyze data. Use for any Node.js backends or future projects using PostgreSQL.

## Install
```bash
npx @modelcontextprotocol/server-postgres
```

Claude Code config:
```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-postgres",
        "postgresql://user:password@localhost:5432/dbname"
      ]
    }
  }
}
```

## Required Env Vars
```
# Connection string format:
# postgresql://USER:PASSWORD@HOST:PORT/DATABASE
# Example: postgresql://hassan:pass@localhost:5432/myapp
```

## Capabilities
- Execute read/write SQL queries
- List tables and schemas
- Describe table structure
- Run aggregations and analytics
- Transaction support

## Usage Examples
- "Show all tables in the database"
- "Count users registered in the last 30 days"
- "Find all failed webhook deliveries"
- "Show the schema of the orders table"

## Applies To
- Any Node.js/Express backends using PostgreSQL
- Future projects that need relational DB

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/postgres
- PostgreSQL Docs: https://www.postgresql.org/docs
