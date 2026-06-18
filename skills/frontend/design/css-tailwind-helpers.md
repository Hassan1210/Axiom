# CSS / Tailwind Helper Skills

**Type:** Skill / Knowledge
**Category:** frontend / design
**Status:** available

## What It Does
Reusable knowledge and patterns for Tailwind CSS, shadcn/ui, and CSS-in-JS. Covers utility-first design, component variants, dark mode, responsive design, and Flutter-equivalent patterns.

## Key Tools & MCPs
- **Context7 MCP** — Pull live Tailwind v4 and shadcn/ui docs on demand
- **21st.dev Magic MCP** — Generate Tailwind components via AI (see 21st-dev-magic-mcp.md)

## Tailwind v4 Setup (Web Projects)
```bash
npm install tailwindcss @tailwindcss/vite
# or
npx tailwindcss init
```

## Flutter Equivalents
| Tailwind Class | Flutter Widget/Property |
|---|---|
| `flex` | `Row` / `Column` |
| `grid` | `GridView` |
| `p-4` | `Padding(padding: EdgeInsets.all(16))` |
| `text-xl` | `TextStyle(fontSize: 20)` |
| `bg-gray-900` | `color: Color(0xFF111827)` |
| `rounded-lg` | `BorderRadius.circular(8)` |
| `shadow-md` | `BoxShadow(...)` |

## Shadcn/UI Components (for web dashboards)
```bash
npx shadcn@latest init
npx shadcn@latest add button card input table
```

## Usage Examples
- Reference for building any web-facing dashboards for ERPNext
- Design token translation between Figma → Flutter → Web

## Applies To
- Any web frontend work (ERPNext custom pages, dashboards)
- `fieldcx-app` / `logsnx-mobile` — Flutter design reference

## Links
- Tailwind Docs: https://tailwindcss.com/docs
- shadcn/ui: https://ui.shadcn.com
- Context7 MCP: https://github.com/upstash/context7
