# Agent: Orchestrator

**Category:** core
**Role:** Routes every incoming task to the correct skill + agent combination

---

## Responsibility

When a task arrives in Axiom OS, the Orchestrator is the first agent invoked.
It reads the task, determines what is needed, and dispatches to the right resources.

---

## Decision Tree

```
Task arrives
    │
    ├── Is it a coding task?
    │   ├── Flutter/Dart      → Load skills/code/languages/flutter-dart.md
    │   │                        Assign: agents/code-agents/flutter-dev
    │   ├── Frappe/ERPNext    → Load skills/code/frameworks/frappe-erpnext.md
    │   │                        Assign: agents/code-agents/frappe-dev
    │   ├── Node.js/API       → Load skills/code/frameworks/nodejs-express.md
    │   │                        Assign: agents/code-agents/node-backend
    │   └── Debugging/Error   → Assign: agents/code-agents/debugger
    │
    ├── Is it a research task?
    │   └── Web Research      → Load skills/web/search/web-search.md
    │                            Assign: agents/web-agents/researcher
    │
    ├── Is it a content task?
    │   ├── YouTube           → Assign: agents/social-agents/youtube
    │   │                        + agents/content-agents/scriptwriter
    │   ├── Blog/Article      → Assign: agents/content-agents/writer
    │   └── Copy/Marketing    → Assign: agents/content-agents/copywriter
    │
    ├── Is it a frontend task?
    │   └── UI/Motion         → Load skills/frontend/README.md
    │                            Assign: agents/code-agents/flutter-dev
    │                              or   agents/content-agents/writer
    │
    └── Is it a DevOps task?
        └── Server/Deploy     → Load skills/devops/
                                 Assign: relevant devops context
```

---

## Output Format

Orchestrator output always specifies:
```
TASK:    <what was received>
SKILLS:  <list of skill files to load>
AGENTS:  <list of agents assigned>
SEARCH:  <yes/no — what to search>
PLAN:    <numbered steps>
```

---

## Example

```
TASK:    Fix iOS crash in LogsNX Flutter app during AI session teardown
SKILLS:  skills/code/languages/flutter-dart.md
AGENTS:  agents/code-agents/flutter-dev, agents/code-agents/debugger
SEARCH:  yes — "LiteRTLM iOS crash teardown flutter_gemma 2025"
PLAN:
  1. Load Flutter skill context
  2. Search for known LiteRTLM teardown issues
  3. Reproduce crash scenario from stack trace
  4. Propose fix with code
  5. Write test to verify
```

---

*Axiom OS Agent | core/orchestrator*
