# Firebase MCP Server

**Type:** MCP Server
**Category:** data / firebase
**Status:** available

## What It Does
Access Firebase services through Claude — Firestore, Authentication, Storage, and Cloud Messaging. Read and write data, manage users, and send push notifications directly.

## Install
```bash
npx firebase-mcp
```

Claude Code config:
```json
{
  "mcpServers": {
    "firebase": {
      "command": "npx",
      "args": ["-y", "firebase-mcp"],
      "env": {
        "SERVICE_ACCOUNT_KEY_PATH": "/home/hassan/Documents/Axiom/axiom/cloud/env/firebase-service-account.json",
        "FIREBASE_STORAGE_BUCKET": "your-project.appspot.com"
      }
    }
  }
}
```

## Required Env Vars
```
SERVICE_ACCOUNT_KEY_PATH=/path/to/firebase-service-account.json
# Download from: Firebase Console → Project Settings → Service Accounts → Generate new private key

FIREBASE_STORAGE_BUCKET=your-project-id.appspot.com
# Found in: Firebase Console → Storage
```

## Capabilities
- Firestore: read, write, query collections/documents
- Authentication: list users, create/delete users, manage tokens
- Storage: list, upload, download files
- Cloud Messaging (FCM): send push notifications

## Flutter Firebase Stack
```yaml
# pubspec.yaml
firebase_core: ^2.27.0
firebase_auth: ^4.17.0
cloud_firestore: ^4.15.0
firebase_messaging: ^14.7.0
firebase_storage: ^11.6.0
```

## Usage Examples
- "Show all Firestore documents in the 'employees' collection"
- "Send FCM push notification to all logsnx-mobile users"
- "List all authenticated users in the fieldcx-app Firebase project"
- "Query Firestore for attendance records from today"

## Applies To
- `logsnx-mobile` — Firebase Auth, Firestore, FCM
- `fieldcx-app` — Firebase Auth, Firestore, FCM

## Links
- GitHub: https://github.com/gannonh/firebase-mcp
- Firebase Console: https://console.firebase.google.com
- Service Account: Console → Project Settings → Service Accounts
