# NPM Global Packages — Hassan's Machine

**Type:** Environment Reference
**Category:** code / tools
**Last Scanned:** 2026-06-11

## Node.js Version
```
Node.js: v18.19.1 (system default)
NVM also installed: v22.14.0 available at ~/.nvm/versions/node/v22.14.0/
```

## Globally Installed NPM Packages
```
@angular/cli          20.3.3   — Angular project scaffolding
@anthropic-ai/claude-code  2.1.92   — Claude Code CLI (this tool!)
localtunnel           2.0.2    — Expose localhost to public URL
yarn                  1.22.22  — Alternative package manager
```

## Notes
- NVM is installed — use `nvm use 22` for Node v22 when needed
- For MCP servers that need npx, use the NVM node: `/home/hassan/.nvm/versions/node/v22.14.0/bin/npx`
- `localtunnel` useful for exposing local dev servers (Flutter web, ERPNext local) for testing

## PATH Issue
Flutter's dart binary conflicts — add to ~/.bashrc:
```bash
export PATH="$HOME/development/flutter2/bin:$PATH"
```

## Links
- NVM: https://github.com/nvm-sh/nvm
- localtunnel: https://github.com/localtunnel/localtunnel
