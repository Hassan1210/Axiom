# SQLite MCP Server

**Type:** MCP Server
**Category:** data / databases
**Status:** available

## What It Does
Direct SQLite database access through Claude. Read, query, and analyze SQLite databases. Useful for Flutter apps that use local SQLite storage (via sqflite) and for lightweight data analysis.

## Install
```bash
npx @modelcontextprotocol/server-sqlite
```

Claude Code config:
```json
{
  "mcpServers": {
    "sqlite": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-sqlite",
        "--db-path", "/path/to/database.db"
      ]
    }
  }
}
```

## Required Env Vars
```
# No env vars — DB path passed as argument
```

## Flutter SQLite (sqflite)
```dart
// pubspec.yaml
dependencies:
  sqflite: ^2.3.0
  path: ^1.8.0

// Usage
final db = await openDatabase('app.db', version: 1,
  onCreate: (db, version) async {
    await db.execute('CREATE TABLE items (id INTEGER PRIMARY KEY, name TEXT)');
  },
);

final items = await db.query('items', where: 'id = ?', whereArgs: [1]);
```

## Usage Examples
- "Query the local SQLite cache in logsnx-mobile for offline attendance records"
- "Show the schema of the fieldcx-app local database"
- "Analyze data stored in the app's SQLite file"

## Applies To
- `logsnx-mobile` — Local SQLite for offline POS data
- `fieldcx-app` — Local SQLite for offline field data

## Links
- GitHub: https://github.com/modelcontextprotocol/servers/tree/main/src/sqlite
- sqflite: https://pub.dev/packages/sqflite
