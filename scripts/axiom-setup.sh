#!/bin/bash
# Axiom OS — Setup Script
# Run this after cloning the repo on a new machine

set -e

AXIOM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo ""
echo "  ██████████████████████████████████"
echo "  ██                              ██"
echo "  ██        AXIOM OS v1.0         ██"
echo "  ██     Personal Cloud OS        ██"
echo "  ██                              ██"
echo "  ██████████████████████████████████"
echo ""
echo "  Booting Axiom OS..."
echo ""

# ── Step 1: Check env file ───────────────────────────
if [ ! -f "$AXIOM_DIR/cloud/env/global.env" ]; then
  echo "  [!] No global.env found."
  echo "  [→] Copying template..."
  cp "$AXIOM_DIR/cloud/env/global.env.example" "$AXIOM_DIR/cloud/env/global.env"
  echo "  [!] Fill in your secrets at: cloud/env/global.env"
  echo "      Then run this script again."
  exit 1
else
  echo "  [✓] Environment file found"
fi

# ── Step 2: Check Node.js ────────────────────────────
if command -v node &> /dev/null; then
  echo "  [✓] Node.js $(node --version)"
else
  echo "  [✗] Node.js not found. Please install from https://nodejs.org"
  exit 1
fi

# ── Step 3: Check Python ─────────────────────────────
if command -v python3 &> /dev/null; then
  echo "  [✓] Python $(python3 --version)"
else
  echo "  [✗] Python 3 not found."
fi

# ── Step 4: Check Claude Code ───────────────────────
if command -v claude &> /dev/null; then
  echo "  [✓] Claude Code installed"
else
  echo "  [!] Claude Code not found."
  echo "  [→] Installing Claude Code..."
  npm install -g @anthropic-ai/claude-code
fi

# ── Step 5: Install MCP agents ───────────────────────
echo ""
echo "  Installing core MCP agents..."

# Context7 — live docs
echo "  [→] context7..."
npx -y @upstash/context7-mcp@latest --version > /dev/null 2>&1 && echo "  [✓] context7" || echo "  [!] context7 install check — run manually"

# Memory
echo "  [→] memory..."
npx -y @modelcontextprotocol/server-memory --help > /dev/null 2>&1 && echo "  [✓] memory" || echo "  [!] memory — run manually"

# Sequential thinking
echo "  [→] sequential-thinking..."
npx -y @modelcontextprotocol/server-sequential-thinking --help > /dev/null 2>&1 && echo "  [✓] sequential-thinking" || echo "  [!] sequential-thinking — run manually"

echo ""
echo "  ── Setup Complete ───────────────────────────────"
echo ""
echo "  Your Axiom OS is ready."
echo ""
echo "  To start:"
echo "    cd $AXIOM_DIR"
echo "    claude"
echo ""
echo "  Claude will auto-read CLAUDE.md and boot with full context."
echo ""
