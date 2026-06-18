# Axiom OS

> My personal cloud operating system. Skills, agents, projects, and cloud tools — portable, versioned, always available.

[![GitHub](https://img.shields.io/badge/maintained%20by-Hassan-blue)]()
[![Version](https://img.shields.io/badge/version-1.0.0-green)]()
[![Claude Code](https://img.shields.io/badge/powered%20by-Claude%20Code-orange)]()

---

## What is Axiom?

Axiom is a **personal OS** built on top of Claude Code. It stores all my:

- **Skills** — reusable knowledge modules (Flutter, Frappe, web search, frontend, devops, ML/AI, productivity)
- **Agents** — specialized AI agents for coding, research, content, social media
- **Projects** — isolated project contexts with their own config and agents
- **Cloud layer** — environment configs, sync state, and storage references

Push to GitHub. Clone on any machine. Everything is the same.

---

## Quick Start

```bash
# Clone your OS
git clone https://github.com/hassan/axiom
cd axiom

# Set up environment
cp cloud/env/global.env.example cloud/env/global.env
# Fill in your API keys and secrets

# Start a new project
cp -r projects/_template projects/active/my-new-project
cd projects/active/my-new-project
# Edit PROJECT.md
```

## Using with Claude Code

```bash
# Open axiom in Claude Code
cd axiom
claude

# Claude will auto-read CLAUDE.md and boot with full OS context
```

---

## Structure

```
axiom/
├── CLAUDE.md              ← OS brain (read first)
├── README.md              ← This file
├── cloud/                 ← Cloud storage, sync, env vars
├── skills/                ← Reusable skill modules
│   ├── code/              ← Flutter, Python, Frappe, JS
│   ├── web/               ← Search, scraping, APIs
│   ├── agents/            ← Agent skill packs
│   ├── frontend/          ← UI, design, motion graphics
│   ├── devops/            ← Docker, CI/CD, cloud
│   ├── data/              ← Databases, analytics, ML/AI
│   └── productivity/      ← Automation, FCM, scheduling
├── agents/                ← Registered AI agents
│   ├── core/              ← Orchestrator, planner
│   ├── code-agents/       ← Flutter dev, Frappe dev, debugger
│   ├── web-agents/        ← Researcher, scraper
│   ├── social-agents/     ← YouTube, Twitter, LinkedIn
│   ├── content-agents/    ← Writer, scriptwriter, editor
│   └── custom/            ← Personal custom agents
├── projects/              ← All projects (isolated)
│   ├── _template/         ← Copy this for new projects
│   ├── active/            ← Live projects
│   └── archived/          ← Done projects
├── docs/                  ← Guides, references, changelogs
├── config/                ← Global configs
├── scripts/               ← Utility scripts
└── logs/                  ← Activity logs
```

---

## My Stack

| Layer | Tech |
|---|---|
| Mobile | Flutter / Dart |
| Backend | Python / Frappe / Node.js |
| Database | MariaDB / Firebase / MongoDB |
| Cloud | DigitalOcean / Firebase |
| AI | Claude / Gemma / Firebase AI |
| DevOps | Nginx / Certbot / GitHub Actions |
| Content | YouTube (Mindivo channel) |

---

## Active Projects

| Project | Stack | Status |
|---|---|---|
| LogsNX Mobile | Flutter, Firebase, ERPNext | Active |
| FieldCX App | Flutter, Frappe, MVVM+Riverpod | Active |
| TraceIssue | Frappe, ERPNext v16 | Active |
| ERP Server | ERPNext v16, multi-tenant | Active |
| Mindivo | YouTube, dark psychology | Active |

---

## Philosophy

> One repo. All context. Any machine.

The goal is zero setup time when switching environments. Everything needed to continue any project is in this repo — skills, agents, configs, and documentation.

---

*Axiom OS v1.0.0 — Built by Hassan*
