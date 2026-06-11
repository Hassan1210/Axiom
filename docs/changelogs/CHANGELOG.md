# Axiom OS — Changelog

All major updates and additions to the OS.

---

## v1.0.0 — 2026-06-11

### Initial Release

**Structure**
- Created full OS directory structure
- Added CLAUDE.md as OS brain
- Set up cloud/, skills/, agents/, projects/, docs/, config/, scripts/, logs/

**Skills Added**
- `skills/code/languages/flutter-dart.md`
- `skills/code/frameworks/frappe-erpnext.md`
- `skills/web/search/web-search.md`
- `skills/frontend/motion-graphics/motion-graphics.md`
- `skills/agents/coding/mcp-agents.md`
- `skills/agents/content/content-writing.md`
- `skills/agents/social-media/social-mcp-agents.md`
- `skills/devops/README.md`
- `skills/data/README.md`
- `skills/productivity/README.md`

**Agents Added**
- `agents/core/orchestrator.md`
- `agents/social-agents/youtube.md`

**Cloud**
- `cloud/env/global.env.example`
- `.gitignore` with secret protection

**Projects**
- `projects/_template/PROJECT.md`

---

---

## v1.1.0 — 2026-06-11

### Major Update: Full MCP + Agent + Skill Installation + Local Env Scan

**Code / Development (17 files)**
- Skills: github-mcp, context7-mcp, sequential-thinking-mcp, filesystem-mcp, memory-mcp, playwright-mcp, installed-mcp-servers
- Skills: flutter-mcp-tools, python-frappe-mcp, nodejs-mcp, npm-globals, python-globals, vscode-extensions, flutter-environment
- Agents: flutter-dev-agent, frappe-dev-agent, debug-agent, code-review-agent, test-gen-agent, docs-gen-agent, ui-component-agent

**Web Search & Research (9 files)**
- Skills: brave-search-mcp, exa-mcp, tavily-mcp, perplexity-mcp, firecrawl-mcp, puppeteer-mcp, browserbase-mcp
- Agents: researcher (updated), competitive-research-agent

**Frontend & Design (9 files)**
- Skills: 21st-dev-magic-mcp, figma-mcp, css-tailwind-helpers, remotion-mcp, lottie-agent, gsap-agent, replicate-mcp, fal-ai-mcp
- Agents: ui-component-agent, image-gen-agent

**DevOps & Cloud (6 files)**
- Skills: docker-mcp, digitalocean-mcp, nginx-ssl-automation, server-monitoring, system-tools
- Agents: server-agent

**Content & YouTube (5 files)**
- Skills: youtube-data-api-mcp, elevenlabs-tts-mcp, seo-research-skills
- Agents: scriptwriter-agent, thumbnail-agent

**Productivity & Automation (6 files)**
- Skills: google-calendar-mcp, gmail-mcp, notion-mcp, slack-mcp, linear-mcp
- Agents: scheduler-agent

**Data & AI (7 files)**
- Skills: mariadb-mcp, postgresql-mcp, sqlite-mcp, redis-mcp, firebase-mcp, anthropic-agent-patterns, on-device-ai-flutter

**Local Environment Scan**
- Discovered: Flutter 3.41.6 (needs PATH fix), frappe-bench 5.23.0, Docker 29.1.3, Node v18/v22 via NVM
- Discovered: Figma MCP already configured with API key
- Discovered: Google MCPs registered (Calendar, Gmail, Drive) — need OAuth
- Saved: system-tools.md, npm-globals.md, python-globals.md, vscode-extensions.md, flutter-environment.md

**Updated**
- CLAUDE.md — Local Environment section + expanded skill/agent indexes
- agents/README.md — Full rebuild with all 15 agents
- cloud/env/global.env.example — All new API key variables added

**Total added: 52 files | 15 agents | 37+ skill files**

---

*Axiom OS Changelog*
