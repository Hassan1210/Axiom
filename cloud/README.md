# Cloud — Axiom OS

Handles all cloud storage, sync, environment configuration, and backups.

---

## Structure

```
cloud/
├── storage/     ← Persistent files synced to cloud (Google Drive / S3)
├── sync/        ← Sync manifests and state files
├── backups/     ← Automated backup references
└── env/         ← Per-project environment variable files
```

---

## Environment Variables (`env/`)

Each project has its own `.env` file here. Never commit real secrets.
Use `.env.example` files with placeholder values in the repo.

```
cloud/env/
├── .gitignore          ← ignores all *.env files
├── global.env.example
├── erp-server.env.example
├── logsnx-mobile.env.example
├── fieldcx-app.env.example
└── trace-issue.env.example
```

### Global Env Template
```env
# Axiom OS Global Environment
AXIOM_OWNER=Hassan
AXIOM_ENV=production

# Firebase
FIREBASE_PROJECT_ID=
FIREBASE_SERVICE_ACCOUNT_KEY=

# DigitalOcean
DO_API_TOKEN=
DO_DROPLET_ID=

# GitHub
GITHUB_TOKEN=
GITHUB_USERNAME=

# ERPNext
BENCH_PATH=/home/frappe/frappe-bench
FRAPPE_ADMIN_PASSWORD=
```

---

## Sync Strategy

Files stored in `cloud/storage/` are synced via:
- **GitHub** — code, configs, skill files, agent files
- **Google Drive** — large files, assets, backups
- **Firebase Storage** — app-specific media

---

## Backup Schedule

| What | Where | Frequency |
|---|---|---|
| ERPNext site DBs | cloud/backups/ refs | Daily (bench) |
| GitHub repos | GitHub | On push |
| Axiom OS itself | GitHub | On push |

---

## Portability Promise

> Clone Axiom on any machine. Add your `.env` files. You're back to 100%.

```bash
git clone https://github.com/hassan/axiom
cd axiom
cp cloud/env/global.env.example cloud/env/global.env
# Fill in your secrets
# Done — your entire OS is restored
```

---

*Axiom OS Cloud Layer | Last updated: 2026*
