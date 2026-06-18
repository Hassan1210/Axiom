# Skills — Agents (Social Media)

Social media management agents and MCP tools for Axiom OS.

---

## MCP Agents for Social Media (Install These)

```bash
# ── YouTube ──────────────────────────────────────────

# YouTube Data API MCP
# Search GitHub: "youtube mcp server"
# Capabilities: video analytics, upload data, channel stats
# Auth: YouTube Data API v3 key from Google Cloud Console

# ── Content Scheduling ───────────────────────────────

# Buffer MCP — schedule posts to YouTube, Twitter, LinkedIn
# Search: "buffer mcp claude"

# ── Research for Content ─────────────────────────────

# Exa MCP — find trending topics, competitor research
npx exa-mcp-server

# Perplexity MCP — AI-powered research for script backing
# Search: "perplexity mcp server"

# ── Image Generation (Thumbnails) ───────────────────

# Replicate MCP — run Stable Diffusion, FLUX, etc.
npx @modelcontextprotocol/server-replicate
# Requires: REPLICATE_API_KEY

# ── Analytics ────────────────────────────────────────

# Google Analytics MCP
# Search: "google analytics mcp"
```

---

## Mindivo Channel Workflow

```
1. Research    → agents/web-agents/researcher + Exa MCP
2. Script      → agents/content-agents/scriptwriter
3. TTS         → ElevenLabs API (search: elevenlabs mcp)
4. Thumbnail   → Replicate MCP (FLUX / SDXL)
5. Upload      → YouTube Data API MCP
6. Schedule    → Buffer MCP
7. Analyze     → YouTube Analytics after 48h
```

---

## Social Media Skill Files

| File | Platform | Content |
|---|---|---|
| `youtube-strategy.md` | YouTube | SEO, titles, thumbnails, retention |
| `twitter-threads.md` | Twitter/X | Thread structure, hooks |
| `linkedin-posts.md` | LinkedIn | Professional storytelling |

---

*Axiom OS Skills — Agents/Social Media | Last updated: 2026*
