# Skill: Web Search & Research

**Category:** web/search
**Owner:** Hassan

---

## Purpose

Search the web to retrieve up-to-date information, find packages, research solutions, and gather context for any task inside Axiom OS.

---

## When to Use

- Finding latest package versions and changelogs
- Researching error messages and stack traces
- Discovering MCP agents and tools available online
- Gathering competitive research or market info
- Finding documentation for unfamiliar APIs
- Checking for security advisories

---

## Search Strategy

### Coding Searches
```
<error message> <language/framework> site:stackoverflow.com
<package name> changelog <version>
<feature> <framework> tutorial 2025
```

### Agent Discovery Searches
```
MCP agent <category> GitHub
Claude MCP server <use-case>
AI agent <task> open source
```

### Package Discovery
```
best npm package for <task>
best pip package for <task>
<framework> recommended libraries 2025
```

---

## Output Format

When returning search results, always include:
1. Source URL
2. Relevance summary (1–2 sentences)
3. Key extracted info
4. Confidence level (high / medium / low)

---

## Integrated With

- `agents/web-agents/researcher.md` — deep research tasks
- `agents/web-agents/scraper.md` — extracting structured data
- `skills/agents/research/` — research-specific skill packs

---

*Axiom OS Skill | Last updated: 2026*
