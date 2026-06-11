# Node.js MCP Tools & Skills

**Type:** Skill / Knowledge
**Category:** code / Node.js
**Status:** available

## What It Does
Reference skill for Node.js/Express/TypeScript API development. Covers REST API patterns, authentication, database integration, and MCP tooling for Node.js projects.

## Key MCP Integrations for Node.js
- **Context7** — Pull Express, Fastify, Prisma, etc. docs
- **GitHub MCP** — Access repos, manage PRs
- **PostgreSQL/MariaDB MCP** — Query databases directly

## Project Structure (Express + TypeScript)
```
src/
├── controllers/     # Route handlers
├── middleware/      # Auth, validation, error handling
├── models/          # DB models (Prisma/Mongoose schemas)
├── routes/          # Express routers
├── services/        # Business logic
├── utils/           # Helpers
└── app.ts           # Express app setup
```

## Common Packages
```json
{
  "express": "^4.18.0",
  "typescript": "^5.0.0",
  "prisma": "^5.0.0",
  "@anthropic-ai/sdk": "^0.24.0",
  "zod": "^3.22.0",
  "jsonwebtoken": "^9.0.0",
  "bcryptjs": "^2.4.3",
  "cors": "^2.8.5",
  "dotenv": "^16.0.0"
}
```

## REST API Pattern
```typescript
import express from 'express';
import { z } from 'zod';

const router = express.Router();

const CreateSchema = z.object({
  name: z.string().min(1),
  email: z.string().email(),
});

router.post('/create', async (req, res) => {
  const data = CreateSchema.parse(req.body);
  // ... handler
  res.json({ success: true, data });
});
```

## Applies To
- Any backend API services in Hassan's stack
- Integration layer between ERPNext and mobile apps
- Webhook handlers for automation

## Links
- Node.js Docs: https://nodejs.org/docs
- Express: https://expressjs.com
- Prisma: https://www.prisma.io/docs
