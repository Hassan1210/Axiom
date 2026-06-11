# Skills — Data

Database, analytics, and ML/AI skills for Axiom OS.

---

## Databases (`databases/`)

| Skill | Use Case |
|---|---|
| `mariadb.md` | ERPNext database management, queries, migrations |
| `firebase-firestore.md` | NoSQL real-time database for Flutter apps |
| `mongodb.md` | Document-based DB for Node.js projects |
| `sql-general.md` | General SQL patterns and optimization |

## Analytics (`analytics/`)

| Skill | Use Case |
|---|---|
| `youtube-analytics.md` | Channel performance analysis |
| `erp-reports.md` | ERPNext custom reports and dashboards |
| `firebase-analytics.md` | App usage and event tracking |

## ML / AI (`ml-ai/`)

| Skill | Use Case |
|---|---|
| `flutter-gemma.md` | On-device AI with Gemma models in Flutter |
| `firebase-ai.md` | Firebase AI / Vertex AI integration |
| `anthropic-api.md` | Claude API for agentic workflows |
| `openai-api.md` | GPT/DALL-E for content and image generation |

---

## Flutter Gemma (On-Device AI)

```dart
// Model: .litertlm format
// Package: flutter_gemma

final gemma = FlutterGemma.instance;
await gemma.init(modelPath: 'assets/models/gemma2b.litertlm');

final response = await gemma.generateText(
  prompt: 'Summarize: $inputText',
  maxTokens: 200,
);
```

**Known iOS Issue:** Session teardown crash during cleanup.
See: `projects/active/logsnx-mobile/` for fix history.

---

## Anthropic API (Claude in Workflows)

```python
import anthropic

client = anthropic.Anthropic(api_key="...")

message = client.messages.create(
    model="claude-sonnet-4-20250514",
    max_tokens=1024,
    messages=[{"role": "user", "content": "Your prompt here"}]
)
print(message.content[0].text)
```

---

*Axiom OS Skills — Data Category*
