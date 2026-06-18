# Agents — Axiom OS

All AI agents registered in Axiom OS. Each agent has a single responsibility and can be composed with skills to complete complex workflows.

---

## Core Agents (`core/`)

| Agent | Role |
|---|---|
| `orchestrator.md` | Routes tasks to the right skill/agent combo |

---

## Code Agents (`code-agents/`)

| Agent | File | Role |
|---|---|---|
| Flutter Developer | `flutter-dev-agent.md` | Flutter/Dart mobile development (logsnx, fieldcx) |
| Frappe Developer | `frappe-dev-agent.md` | Frappe/ERPNext backend and customization |
| Code Reviewer | `code-review-agent.md` | Code review, best practices, security audits |
| Debugger | `debug-agent.md` | Analyze errors, stack traces, find root cause |
| Test Generator | `test-gen-agent.md` | Write unit, widget, and integration tests |
| Docs Generator | `docs-gen-agent.md` | Generate API docs, READMEs, inline comments |
| UI Component Generator | `ui-component-agent.md` | Generate UI from Figma or text using 21st.dev |

---

## Web Agents (`web-agents/`)

| Agent | File | Role |
|---|---|---|
| Web Researcher | `researcher.md` | Deep multi-source web research |
| Competitive Research | `competitive-research-agent.md` | Competitor analysis for mindivo and apps |
| Web Scraper | `scraper.md` | Extract structured data from websites |

---

## DevOps Agents (`devops-agents/`)

| Agent | File | Role |
|---|---|---|
| Server Agent | `server-agent.md` | DigitalOcean, ERPNext, Nginx/SSL, monitoring |

---

## Social Agents (`social-agents/`)

| Agent | File | Role |
|---|---|---|
| YouTube Manager | `youtube.md` | YouTube strategy, SEO, analytics |
| Scriptwriter | `scriptwriter-agent.md` | YouTube scripts for mindivo dark psychology channel |

---

## Content Agents (`content-agents/`)

| Agent | File | Role |
|---|---|---|
| Image Generator | `image-gen-agent.md` | YouTube thumbnails via FAL.ai + Replicate |
| Thumbnail Agent | `thumbnail-agent.md` | Specialized thumbnail creation for mindivo |

---

## Productivity Agents (`productivity-agents/`)

| Agent | File | Role |
|---|---|---|
| Scheduler | `scheduler-agent.md` | Cron jobs, content calendar, automation |

---

## Agent Protocol

Every agent in Axiom follows this protocol:

```
INPUT:   Task description + relevant context
SKILL:   Which axiom/skills/ files to load
SEARCH:  Whether web search is needed (and which MCP)
OUTPUT:  Defined format (code / doc / list / json)
LOG:     Entry written to axiom/logs/
```

---

## Routing (via orchestrator)

```
Coding task      → flutter-dev-agent / frappe-dev-agent
Bug/error        → debug-agent
Code quality     → code-review-agent
Tests needed     → test-gen-agent
Web research     → researcher (web-agents)
Competitor intel → competitive-research-agent
YouTube content  → scriptwriter-agent + thumbnail-agent
Server ops       → server-agent (devops-agents)
Scheduling       → scheduler-agent
Image/visual     → image-gen-agent
```

---

*Axiom OS Agents Index | Last updated: 2026-06-11*
