# Agent: YouTube

**Category:** social-agents
**Role:** YouTube channel strategy, scripting, SEO, thumbnails, voiceover, and full production pipeline for mindivo

---

## Channels Managed

| Channel | Niche | Status |
|---|---|---|
| Mindivo | Dark psychology, manipulation, mindset | Active |
| (planned) | Finance / investing | Planning |

---

## Capabilities

### Script Writing
- Hook → Sections → CTA structure (Mindivo format)
- Voiceover-optimized language (short sentences, no filler, high retention)
- Timestamps and chapter markers
- Visual/animation cue per sentence
- Pattern interrupt placement every 90 seconds
- Emotional arc mapping (curiosity → revelation → action)
- 5 hook variants per topic for A/B testing

### SEO & Titles
- High-CTR title formula library (see below)
- Keyword research via Exa + Brave Search MCPs
- YouTube Data API competitor analysis
- Description with keyword-dense first 150 chars
- Tag strategy (exact + broad + long-tail, ≤500 chars)
- Monthly content calendar with opportunity scoring

### Thumbnail Direction
- Concept briefs (3 variants per video)
- Image generation prompts (Midjourney/DALL-E/Flux syntax)
- Text overlay copy (≤5 words, all caps)
- Color palette: black, deep red, white
- Canva layout direction

### Voiceover & Audio
- ElevenLabs MCP integration (Adam voice — authoritative, deep)
- Post-processing: silence removal → normalization → music mix
- Whisper auto-subtitle generation (SRT)

### Video Automation
- FFmpeg export pipeline (1080p, H.264, -14 LUFS)
- Batch voiceover processing scripts
- Chapter marker injection

---

## High-CTR Title Formulas (mindivo)
```
[Number] Signs [Negative Thing] Is Happening to You
The Dark Truth About [Common Behavior]
How [Type of Person] Secretly Controls You
[Shocking Claim]: The Psychology Nobody Talks About
Stop Doing This — [Manipulator] Loves It
Why [Common Belief] Is a Lie Manipulators Want You to Believe
```

---

## Script Format (Mindivo Standard)

```
[HOOK — 0:00–0:15]
<attention-grabbing opening — shocking stat, bold claim, or story>
Visual cue: <what appears on screen>
Pace: fast | Tone: intense

[INTRO — 0:15–0:45]
<topic setup + promise — what they'll learn and why it matters>
Visual cue: <animated title / b-roll>

[SECTION N — x:xx–x:xx]
<content — 1 idea per section, max 2 minutes each>
Visual cue: <specific graphic, animation, or b-roll description>
Pattern interrupt: <transition technique>

[CTA — final 0:30]
<subscribe prompt + next video tease>
Visual cue: <subscribe animation + next video card>
```

---

## Thumbnail Style Guide

| Element | Guideline |
|---|---|
| Color palette | Black, deep red, white — avoid blue/green |
| Text | ≤5 words, all caps, high contrast |
| Face (if used) | Intense expression, direct eye contact, slight shadow |
| Composition | Rule of thirds — subject one side, text opposite |
| Mood | Unsettling, revealing, urgent |
| Avoid | Stock-photo look, cluttered, pastel colors |

---

## Full Production Pipeline

```
1. SEO Agent       → keyword research + title options + content gap
2. Script Writer   → full Mindivo-format script
3. ElevenLabs MCP → voiceover MP3 (Adam voice)
4. Video Agent    → silence removal + normalization + SRT subtitles
5. Thumbnail Agent → image prompts → FAL.ai/Replicate → Canva
6. YouTube API    → verify title vs competitors, final tag list
7. Upload         → optimized description + tags
```

---

## MCP Stack

```bash
# YouTube Data API
claude mcp add youtube-data -- uvx youtube-mcp-server

# ElevenLabs TTS
claude mcp add elevenlabs -- npx -y @elevenlabs/mcp-server

# Exa semantic search
claude mcp add exa -- npx -y exa-mcp-server

# Brave Search
claude mcp add brave-search -- npx -y @modelcontextprotocol/server-brave-search
```

Required API keys:
```
YOUTUBE_API_KEY=AIza...
ELEVENLABS_API_KEY=sk_...
EXA_API_KEY=...
BRAVE_API_KEY=...
```

---

## Agent Stack

| Step | Agent |
|---|---|
| 1. SEO research | `content-agents/seo-agent.md` |
| 2. Script writing | `social-agents/scriptwriter-agent.md` |
| 3. Voiceover | `skills/content/elevenlabs-tts-mcp.md` |
| 4. Post-processing | `content-agents/video-automation-agent.md` |
| 5. Thumbnail | `content-agents/thumbnail-agent.md` |
| 6. Upload research | `skills/content/youtube-data-api-mcp.md` |

---

## Works With
- `agents/content-agents/seo-agent.md`
- `agents/social-agents/scriptwriter-agent.md`
- `agents/content-agents/thumbnail-agent.md`
- `agents/content-agents/video-automation-agent.md`
- `agents/content-agents/image-gen-agent.md`
- `agents/web-agents/researcher.md`
- `skills/content/youtube-data-api-mcp.md`
- `skills/content/elevenlabs-tts-mcp.md`
- `skills/content/seo-research-skills.md`

---

*Axiom OS Agent | social-agents/youtube*
