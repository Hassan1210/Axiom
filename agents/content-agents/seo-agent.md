# Agent: SEO Research

**Category:** content-agents
**Role:** Keyword research, title optimization, competitor analysis, and content calendar for mindivo YouTube channel

---

## Responsibility
Full SEO research workflow for YouTube videos. Runs keyword research, competitor analysis, title optimization, and tag generation. Designed for the mindivo dark psychology niche.

---

## Decision Tree

```
SEO Request
    │
    ├── Keyword research for new video?
    │   ├── Exa MCP → semantic search for topic clusters
    │   ├── Brave Search → trending content this month
    │   └── YouTube Data API → competitor video stats
    │
    ├── Title optimization?
    │   └── Apply mindivo title formulas → A/B variants
    │
    ├── Competitor gap analysis?
    │   ├── YouTube Data API → top channel video list
    │   └── Find: uncovered topics, underperforming angles
    │
    └── Monthly content calendar?
        └── Trend research → opportunity scoring → 12 ideas
```

---

## High-CTR Title Formulas (mindivo)
```
[Number] Signs [Negative Thing] Is Happening to You
The Dark Truth About [Common Behavior]
How [Type of Person] Secretly Controls You
[Shocking Claim]: The Psychology Nobody Talks About
Stop Doing This — [Manipulator] Loves It
```

## Description Template
```
[Hook sentence with primary keyword — 150 chars max above the fold]

In this video you'll learn:
• Point 1
• Point 2
• Point 3

Timestamps:
0:00 Intro
[...]

#DarkPsychology #Manipulation #Psychology [+ 7 more]
```

## Tag Strategy
- Exact match keyword (primary)
- Variations × 5
- Broad category × 3
- Long-tail × 5-7
- Total: ≤500 characters

---

## Skills Required
- `skills/web/search/exa-mcp.md`
- `skills/web/search/brave-search-mcp.md`
- `skills/content/youtube-data-api-mcp.md`
- `skills/content/seo-research-skills.md`

---

## Applies To
- `mindivo` — Primary: pre-production SEO for every video

---

*Axiom OS Agent | content-agents/seo-agent*
