# Redis MCP Server

**Type:** MCP Server
**Category:** data / databases
**Status:** available

## What It Does
Direct Redis access through Claude. Inspect cache state, manage keys, debug queue issues, and monitor Redis memory. Critical for ERPNext which uses Redis for caching and job queues.

## Install
```bash
npx redis-mcp-server
```

Claude Code config:
```json
{
  "mcpServers": {
    "redis": {
      "command": "npx",
      "args": ["-y", "redis-mcp-server"],
      "env": {
        "REDIS_URL": "redis://127.0.0.1:6379"
      }
    }
  }
}
```

## Required Env Vars
```
REDIS_URL=redis://127.0.0.1:6379
# ERPNext uses Redis on localhost:6379 (default)
# Check: bench/sites/common_site_config.json → redis_cache, redis_queue
```

## ERPNext Redis Architecture
```
Redis Cache  (port 6379) — Page and query caching
Redis Queue  (port 11000) — Background job queue
Redis Socketio (port 13000) — Realtime/websocket

# Check status
redis-cli ping
redis-cli -p 11000 ping
redis-cli info keyspace
```

## Usage Examples
- "Show all keys in the ERPNext Redis cache"
- "Check the background job queue depth"
- "Clear the Redis cache for a specific site"
- "Monitor Redis memory usage"
- "Show the realtime event queue"

## Useful Redis CLI Commands for ERPNext
```bash
# Clear site cache
bench --site mysite.com clear-cache

# Manually via redis-cli
redis-cli FLUSHDB                    # Clear cache DB
redis-cli -p 11000 LLEN rq:queue:default  # Queue length
redis-cli INFO memory                # Memory stats
```

## Applies To
- `erp-server` — ERPNext cache and queue management

## Links
- Redis Docs: https://redis.io/docs
- ERPNext Redis: https://frappeframework.com/docs/v14/user/en/debugging
