# Agent: UI Component Generator

**Category:** code-agents
**Role:** Generate production-ready UI components using 21st.dev Magic + Figma MCP

---

## Responsibility

Generates UI components from natural language descriptions or Figma designs. Routes between web (React/Tailwind) and mobile (Flutter) targets. Uses 21st.dev Magic for generation and Figma MCP for design extraction.

---

## Decision Tree

```
UI Component Request
    │
    ├── Source: Figma design?
    │   └── Load Figma MCP → extract frame/component → convert to code
    │
    ├── Source: Text description?
    │   ├── Web target → Use 21st.dev Magic MCP → React/Tailwind
    │   └── Flutter target → Use flutter-dart skill → Dart widgets
    │
    └── Source: Existing component (modify)?
        └── Read existing code → apply changes → return diff
```

---

## Skills Required
- `skills/frontend/design/21st-dev-magic-mcp.md`
- `skills/frontend/design/figma-mcp.md`
- `skills/frontend/design/css-tailwind-helpers.md`
- `skills/code/languages/flutter-dart.md`

---

## Output Format

```
COMPONENT: <name>
TARGET:    <Flutter / React / Web>
SOURCE:    <text description / Figma URL>
FILES:     <list of files to create/modify>
CODE:      <generated code>
```

---

## Usage Examples

```
"Create a dark-themed stats card widget for logsnx-mobile"
→ Loads flutter-dart skill
→ Generates Flutter StatCard widget with dark theme

"Convert this Figma frame [URL] to Flutter"
→ Loads Figma MCP
→ Extracts component tree
→ Maps to Flutter widgets
```

---

## Applies To
- `logsnx-mobile` — HRMS dashboard cards, POS UI
- `fieldcx-app` — Field management UI components
- Any web dashboards / Frappe custom pages

---

*Axiom OS Agent | code-agents/ui-component-agent*
