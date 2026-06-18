# ElevenLabs TTS MCP — AI Voice Generation

**Type:** MCP Server
**Category:** content / voice
**Status:** available

## What It Does
Generate ultra-realistic AI voiceovers using ElevenLabs. Clone voices, generate narration, and create multilingual audio for YouTube videos. Essential for mindivo channel automation.

## Install
```bash
npx elevenlabs-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "elevenlabs": {
      "command": "npx",
      "args": ["-y", "elevenlabs-mcp"],
      "env": {
        "ELEVENLABS_API_KEY": "your_api_key_here"
      }
    }
  }
}
```

## Required Env Vars
```
ELEVENLABS_API_KEY=sk_xxxx
# Get from: https://elevenlabs.io/settings/api-keys
# Free tier: 10,000 characters/month
# Starter: $5/month → 30,000 chars
```

## Voice Generation
```python
# Python SDK
from elevenlabs import generate, save, voices
from elevenlabs.client import ElevenLabs

client = ElevenLabs(api_key="your_key")

audio = client.generate(
    text="Welcome to Mindivo. Today we explore the dark art of persuasion.",
    voice="Adam",       # Or custom cloned voice
    model="eleven_multilingual_v2",
    voice_settings={
        "stability": 0.5,
        "similarity_boost": 0.75,
        "style": 0.5,
    }
)
save(audio, "voiceover.mp3")
```

## Voice Cloning
1. Upload 1+ minute of clean audio
2. ElevenLabs clones your voice
3. Use cloned voice ID in API calls
4. Clone Hassan's voice for mindivo automation

## Available Models
| Model | Quality | Speed | Use Case |
|---|---|---|---|
| `eleven_multilingual_v2` | Best | Slow | YouTube narration |
| `eleven_turbo_v2_5` | Good | Fast | Quick iterations |
| `eleven_flash_v2_5` | OK | Fastest | Previews |

## Usage Examples
- Generate full YouTube episode voiceover from script
- Create video intro/outro narration
- Produce multiple takes for A/B testing
- Generate Arabic/Urdu versions (multilingual v2)

## Applies To
- `mindivo` — Primary — YouTube voiceover automation

## Links
- GitHub: https://github.com/elevenlabs/elevenlabs-mcp
- Dashboard: https://elevenlabs.io
- API Keys: https://elevenlabs.io/settings/api-keys
- Voice Library: https://elevenlabs.io/voice-library
