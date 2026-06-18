# Skills — Agents (Coding)

All coding-related agent skill packs and MCP agents to install for development workflows.

---

## MCP Agents for Coding (Install These)

These are agents you pull from the web into Axiom via Claude Code:

```bash
# ── Essential Coding Agents ──────────────────────────

# GitHub MCP — repos, issues, PRs, Actions, code search
claude mcp add github --scope user
# Requires: GITHUB_TOKEN in your env

# Context7 — fetches live docs for any library you're using
# Usage: Add "use context7" to any prompt
npx -y @upstash/context7-mcp@latest

# Playwright MCP — browser automation for testing
npx @playwright/mcp@latest

# Filesystem MCP — read/write local files from agents
npx @modelcontextprotocol/server-filesystem /your/path

# Memory MCP — persistent memory across sessions
npx @modelcontextprotocol/server-memory

# Sequential Thinking — structured problem solving
npx @modelcontextprotocol/server-sequential-thinking

# ── Database Agents ──────────────────────────────────

# SQLite MCP — local SQLite access
npx @modelcontextprotocol/server-sqlite

# PostgreSQL MCP — PostgreSQL access
npx @modelcontextprotocol/server-postgres

# ── Search / Research ────────────────────────────────

# Brave Search MCP — web search in agent workflows
npx @modelcontextprotocol/server-brave-search
# Requires: BRAVE_API_KEY

# Exa MCP — semantic AI web search
npx exa-mcp-server
# Requires: EXA_API_KEY

# ── Productivity ─────────────────────────────────────

# Notion MCP — read/write Notion pages and databases
npx @modelcontextprotocol/server-notion
# Requires: NOTION_API_KEY

# Google Drive MCP — access Google Drive files
# Available via Claude.ai connectors
```

---

## How to Add MCP to Claude Code

```bash
# Add a server
claude mcp add <name> <command>

# List installed servers
claude mcp list

# Remove a server
claude mcp remove <name>
```

---

## Recommended claude_mcp_config.json

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": { "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_TOKEN}" }
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"]
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    },
    "brave-search": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-brave-search"],
      "env": { "BRAVE_API_KEY": "${BRAVE_API_KEY}" }
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/home/hassan/axiom"]
    }
  }
}
```

Place this in: `config/claude_mcp_config.json`

---

*Axiom OS Skills — Agents/Coding | Last updated: 2026*
