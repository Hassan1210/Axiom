# Git Global Configuration

**Type:** Environment Reference
**Category:** config
**Last Scanned:** 2026-06-11

## Global Settings
```ini
[user]
    name  = hassan210
    email = hch33129@gmail.com

[pull]
    rebase = false     # Merge on pull (not rebase)
    ff = only          # Fast-forward only pulls

[push]
    autoSetupRemote = true  # Auto set upstream on first push
```

## Useful Aliases to Add
```bash
git config --global alias.st "status"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.lg "log --oneline --graph --all"
git config --global alias.last "log -1 HEAD"
```

## Notes
- `pull.ff = only` means git pull will fail if it can't fast-forward — prevents accidental merge commits
- `push.autoSetupRemote = true` means first push on a new branch auto-creates remote tracking
- GitHub username: `hassan210`
- Email: `hch33129@gmail.com`
