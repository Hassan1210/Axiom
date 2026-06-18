# AXIOM — Personal Cloud OS

> Your portable developer environment. Skills, agents, projects, and cloud tools — all in one place.
> Push to GitHub. Clone anywhere. Stay the same.

---

## Identity

You are operating inside **Axiom OS** — a personal cloud operating system built and maintained by Hassan.
Hassan is a Software Engineer and Flutter Developer (3+ years) specializing in cross-platform mobile development, ERPNext/Frappe customization, and AI-powered workflows.

When working inside Axiom, you have full context of:
- All active skills (code, web, frontend, agents, devops, data, productivity)
- All registered agents and their capabilities
- All active and archived projects
- Cloud environment config and sync state

---

## OS Structure

```
axiom/
├── CLAUDE.md                  ← You are here (OS brain)
├── cloud/                     ← Cloud sync, storage, env vars
│   ├── storage/               ← Persistent cloud file storage
│   ├── sync/                  ← Sync state and manifests
│   ├── backups/               ← Automated backups
│   └── env/                   ← Environment configs per platform
├── skills/                    ← Reusable capability modules
│   ├── code/                  ← Programming skills
│   ├── web/                   ← Web search, scraping, APIs
│   ├── agents/                ← Agent-specific skill packs
│   ├── frontend/              ← UI, design systems, motion
│   ├── devops/                ← Docker, CI/CD, cloud
│   ├── data/                  ← Databases, analytics, ML/AI
│   └── productivity/          ← Automation, scheduling, alerts
├── agents/                    ← Registered AI agents
│   ├── core/                  ← Core Axiom agents
│   ├── web-agents/            ← Web browsing & research agents
│   ├── social-agents/         ← Social media management agents
│   ├── content-agents/        ← Content creation agents
│   ├── code-agents/           ← Coding & review agents
│   └── custom/                ← Hassan's custom agents
├── projects/                  ← All projects (isolated)
│   ├── _template/             ← New project template
│   ├── active/                ← Live projects
│   └── archived/              ← Completed/paused projects
├── docs/                      ← Documentation
│   ├── guides/                ← How-to guides
│   ├── references/            ← API references, cheat sheets
│   └── changelogs/            ← OS update history
├── config/                    ← Global config files
├── scripts/                   ← Utility bash/python scripts
└── logs/                      ← OS activity logs
```

---

## Boot Behavior

When a session starts inside Axiom:

1. **Load identity** — Read this CLAUDE.md
2. **Load active project** — If inside `projects/active/<name>/`, read that project's `PROJECT.md`
3. **Load relevant skills** — Based on the task, load skill files from `skills/`
4. **Load relevant agents** — If agent collaboration needed, load from `agents/`
5. **Check cloud env** — Reference `cloud/env/` for API keys, endpoints, and platform config
6. **Execute** — Proceed with full context

---

## Core Rules

- Every project is isolated. Never mix context between projects.
- Every skill is modular. Skills can be composed but not hardcoded into agents.
- Every agent has a single responsibility. No agent does everything.
- Cloud env vars are never hardcoded in code. Always reference `cloud/env/`.
- All work is logged to `logs/` with timestamps.
- Before starting any task, identify which skill(s) and agent(s) are needed.

---

## How to Add a New Project

```bash
cp -r projects/_template projects/active/my-project-name
cd projects/active/my-project-name
# Edit PROJECT.md with project details
```

## How to Add a New Skill

```bash
# Create skill file
touch skills/<category>/<skill-name>.md
# Document: purpose, usage, dependencies, examples
```

## How to Register a New Agent

```bash
touch agents/<category>/<agent-name>.md
# Document: role, capabilities, input/output, tools used
```

---

## Active Projects Index

See `projects/active/` for all live projects.
Each project contains its own `PROJECT.md` with full context.

Current projects:
- `logsnx-mobile` — Flutter HRMS & POS app
- `fieldcx-app` — Flutter field management app (MVVM + Riverpod)
- `trace-issue` — ERPNext issue tracker Frappe app
- `erp-server` — Multi-tenant ERPNext v16 server management
- `mindivo` — YouTube channel (dark psychology content)

---

## Skill Index

| Category | Skills Available |
|---|---|
| `skills/code/languages/` | Flutter/Dart env, flutter-dart patterns |
| `skills/code/frameworks/` | Frappe/ERPNext |
| `skills/code/tools/` | npm-globals, python-globals, vscode-extensions, flutter-mcp-tools, nodejs-mcp, python-frappe-mcp |
| `skills/agents/coding/` | github-mcp, context7-mcp, filesystem-mcp, memory-mcp, playwright-mcp, sequential-thinking-mcp, installed-mcp-servers |
| `skills/web/search/` | brave-search, exa, tavily, perplexity |
| `skills/web/scraping/` | firecrawl, puppeteer, browserbase |
| `skills/frontend/design/` | figma-mcp, 21st-dev-magic, css-tailwind |
| `skills/frontend/motion/` | remotion, lottie, gsap |
| `skills/frontend/images/` | replicate-mcp, fal-ai-mcp |
| `skills/devops/docker/` | docker-mcp |
| `skills/devops/cloud/` | digitalocean-mcp, nginx-ssl-automation |
| `skills/devops/monitoring/` | server-monitoring |
| `skills/devops/` | system-tools |
| `skills/data/databases/` | mariadb-mcp, postgresql-mcp, sqlite-mcp, redis-mcp |
| `skills/data/firebase/` | firebase-mcp |
| `skills/data/ai/` | anthropic-agent-patterns, on-device-ai-flutter |
| `skills/content/` | youtube-data-api-mcp, elevenlabs-tts, seo-research |
| `skills/productivity/calendar/` | google-calendar-mcp |
| `skills/productivity/email/` | gmail-mcp |
| `skills/productivity/project-mgmt/` | notion-mcp, slack-mcp, linear-mcp |

---

## Agent Index

| Agent | File | Role |
|---|---|---|
| Orchestrator | `core/orchestrator` | Routes tasks to right skill/agent |
| Flutter Dev | `code-agents/flutter-dev-agent` | Flutter/Dart mobile development |
| Frappe Dev | `code-agents/frappe-dev-agent` | Frappe/ERPNext customization |
| Debugger | `code-agents/debug-agent` | Bug investigation and fixing |
| Code Reviewer | `code-agents/code-review-agent` | Code quality and security |
| Test Generator | `code-agents/test-gen-agent` | Unit/widget/integration tests |
| Docs Generator | `code-agents/docs-gen-agent` | API docs, READMEs, comments |
| UI Component | `code-agents/ui-component-agent` | Figma → Flutter/React components |
| Web Researcher | `web-agents/researcher` | Multi-source web research |
| Competitive Research | `web-agents/competitive-research-agent` | Competitor analysis |
| Server Agent | `devops-agents/server-agent` | DigitalOcean + ERPNext ops |
| YouTube Manager | `social-agents/youtube` | YouTube strategy and content |
| Scriptwriter | `social-agents/scriptwriter-agent` | YouTube scripts for mindivo |
| Image Generator | `content-agents/image-gen-agent` | FAL.ai + Replicate visuals |
| Thumbnail Agent | `content-agents/thumbnail-agent` | YouTube thumbnail creation |
| Scheduler | `productivity-agents/scheduler-agent` | Cron jobs, automation |

---

## Local Environment (Hassan's Dev Machine)

| Tool | Version | Notes |
|---|---|---|
| OS | Ubuntu 24.04.1 LTS | Kernel 6.17.0-35-generic |
| Flutter | 3.41.6 | `/home/hassan/development/flutter2/bin` — add to PATH |
| Dart | 3.11.4 | Bundled with Flutter |
| Node.js | v18.19.1 (system) / v22.14.0 (nvm) | NVM installed |
| Python | 3.14.2 | `~/.local/bin/python3` |
| Docker | 29.1.3 | docker.io + docker-compose |
| Git | 2.43.0 | user: hassan210 |
| frappe-bench | 5.23.0 | Installed via pip |
| MariaDB client | 10.11.13 | Local client (server is remote) |

### ⚠️ Flutter PATH Fix Required
```bash
echo 'export PATH="$HOME/development/flutter2/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Figma MCP — Already Configured
Figma MCP is set up in `~/.claude/mcp.json` with API key ready.

### Google MCPs — Need Auth
Google Drive, Calendar, Gmail are registered but need OAuth:
```bash
# Authenticate in Claude Code:
# These appear as "Needs authentication" in claude mcp list
```

---

## Environment

Primary stack: Flutter · Dart · Python · Node.js · Frappe · Firebase · MariaDB
Cloud: DigitalOcean · GitHub · Firebase
OS: Ubuntu 24 (server) · macOS/Windows (local)
Editor: VS Code + Claude Code

---

*Axiom OS — Version 1.0.0*
*Maintained by Hassan | github.com/hassan/axiom*
