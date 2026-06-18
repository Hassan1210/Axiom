# VS Code Extensions — Hassan's Setup

**Type:** Environment Reference
**Category:** code / tools
**Last Scanned:** 2026-06-11

## Installed Extensions

| Extension | ID | Purpose |
|---|---|---|
| Claude Code | `anthropic.claude-code` | AI coding assistant (this!) |
| Codeium | `codeium.codeium` | AI autocomplete |
| Rainbow CSV | `mechatroner.rainbow-csv` | CSV file coloring |
| Docker | `ms-azuretools.vscode-containers` | Docker management |
| Python | `ms-python.python` | Python language support |
| Pylance | `ms-python.vscode-pylance` | Python type checking |
| Python Debugpy | `ms-python.debugpy` | Python debugging |
| Python Envs | `ms-python.vscode-python-envs` | Virtual env management |
| Remote SSH | `ms-vscode-remote.remote-ssh` | Connect to remote servers |
| Remote SSH Edit | `ms-vscode-remote.remote-ssh-edit` | Edit remote files |
| Remote Explorer | `ms-vscode.remote-explorer` | Remote connections UI |
| Live Share | `ms-vsliveshare.vsliveshare` | Collaborative coding |

## Notably Missing
Extensions to consider adding:
- `Dart-Code.dart-code` — Dart/Flutter language support
- `Dart-Code.flutter` — Flutter specific tooling
- `ms-vscode.vscode-json` — Enhanced JSON support
- `esbenp.prettier-vscode` — Code formatting
- `dbaeumer.vscode-eslint` — JS/TS linting

## Remote SSH Setup
VS Code Remote SSH is configured — can connect to DigitalOcean servers directly from VS Code.
SSH config at: `~/.ssh/config`

## Key Observations
- Both Claude Code + Codeium installed — Claude Code is primary AI assistant
- Remote SSH available — can edit erp-server files directly from VS Code
- Python stack is well covered (Python + Pylance + Debugpy)
- Flutter/Dart extensions may need to be added for Flutter dev

## Applies To
- All projects — primary development environment
