# Agent: Video Editing Automation

**Category:** content-agents
**Role:** FFmpeg pipelines, subtitle generation, audio processing, and YouTube export automation

---

## Responsibility
Orchestrates automated video editing workflows for mindivo YouTube content. Generates FFmpeg commands, Whisper transcription, silence removal, and export automation. No video editing software required.

---

## Required Tools (install on machine)
```bash
sudo apt install ffmpeg           # Video/audio processing
pip install openai-whisper        # Auto-transcription + subtitles
pip install auto-editor           # Silence removal
pip install yt-dlp                # Reference video download
npm install -g remotion           # Programmatic video (optional)
```

---

## Core Pipelines

### 1. Process ElevenLabs Voiceover
```bash
# Remove silences from raw TTS output
auto-editor voiceover.mp3 --silent-threshold 0.04 -o voiceover_clean.mp3

# Normalize to YouTube standard (-14 LUFS)
ffmpeg -i voiceover_clean.mp3 -af loudnorm=I=-14:LRA=11:TP=-1.5 voiceover_norm.mp3

# Mix with background music (voice loud, music at 15%)
ffmpeg -i voiceover_norm.mp3 -i bgmusic.mp3 \
  -filter_complex "[1:a]volume=0.15[bg];[0:a][bg]amix=inputs=2:duration=first" \
  final_audio.mp3
```

### 2. Auto-Subtitle Generation
```bash
# Generate SRT from voiceover (local Whisper)
whisper voiceover_norm.mp3 --model medium --output_format srt --language en

# Or via OpenAI API (faster)
# OPENAI_API_KEY needed
```

### 3. YouTube Export (1080p, H.264)
```bash
ffmpeg -i video.mp4 -i final_audio.mp3 \
  -c:v libx264 -preset slow -crf 18 \
  -c:a aac -b:a 320k \
  -vf scale=1920:1080 \
  output_youtube.mp4
```

### 4. Batch Process Voiceovers
```bash
#!/bin/bash
# Process all raw voiceovers in a directory
for file in /voiceovers/raw/*.mp3; do
  base=$(basename "$file" .mp3)
  auto-editor "$file" --silent-threshold 0.04 -o "/voiceovers/processed/${base}_clean.mp3"
  ffmpeg -i "/voiceovers/processed/${base}_clean.mp3" \
    -af loudnorm=I=-14:LRA=11:TP=-1.5 \
    "/voiceovers/final/${base}_final.mp3"
done
```

---

## Skills Required
- `skills/content/elevenlabs-tts-mcp.md` (source audio)

## MCP Servers
- Filesystem MCP (navigate project audio files)

---

## Applies To
- `mindivo` — Full post-production pipeline for every episode

---

*Axiom OS Agent | content-agents/video-automation-agent*
