# Anthropic Claude API — Agent Patterns

**Type:** Skill / Knowledge
**Category:** data / ai
**Status:** available

## What It Does
Best practices and patterns for building AI agents and workflows using the Anthropic SDK (Python and TypeScript/Node.js). Covers tool use, multi-turn conversations, streaming, and agentic loops.

## Install
```bash
# Python
pip install anthropic

# Node.js / TypeScript
npm install @anthropic-ai/sdk
```

## Required Env Vars
```
ANTHROPIC_API_KEY=sk-ant-xxxx
# Get from: https://console.anthropic.com/settings/keys
```

## Core Patterns

### Basic API Call (Python)
```python
import anthropic

client = anthropic.Anthropic()

message = client.messages.create(
    model="claude-sonnet-4-6",
    max_tokens=1024,
    messages=[{"role": "user", "content": "Hello"}]
)
print(message.content[0].text)
```

### Tool Use (Python)
```python
tools = [{
    "name": "get_weather",
    "description": "Get weather for a city",
    "input_schema": {
        "type": "object",
        "properties": {
            "city": {"type": "string", "description": "City name"}
        },
        "required": ["city"]
    }
}]

response = client.messages.create(
    model="claude-sonnet-4-6",
    max_tokens=1024,
    tools=tools,
    messages=[{"role": "user", "content": "What's the weather in Dubai?"}]
)
```

### Streaming (Python)
```python
with client.messages.stream(
    model="claude-sonnet-4-6",
    max_tokens=1024,
    messages=[{"role": "user", "content": "Write a long story"}]
) as stream:
    for text in stream.text_stream:
        print(text, end="", flush=True)
```

### Agentic Loop
```python
def run_agent(user_message, tools, tool_handlers):
    messages = [{"role": "user", "content": user_message}]
    
    while True:
        response = client.messages.create(
            model="claude-sonnet-4-6",
            max_tokens=4096,
            tools=tools,
            messages=messages
        )
        
        if response.stop_reason == "end_turn":
            return response.content[0].text
        
        # Handle tool calls
        tool_results = []
        for block in response.content:
            if block.type == "tool_use":
                result = tool_handlers[block.name](block.input)
                tool_results.append({
                    "type": "tool_result",
                    "tool_use_id": block.id,
                    "content": str(result)
                })
        
        messages.append({"role": "assistant", "content": response.content})
        messages.append({"role": "user", "content": tool_results})
```

## Models (2025)
| Model | Best For | Context |
|---|---|---|
| `claude-opus-4-6` | Complex reasoning, agents | 200K |
| `claude-sonnet-4-6` | Balanced speed/quality | 200K |
| `claude-haiku-4-5-20251001` | Fast, cheap tasks | 200K |

## Applies To
- All projects — any AI feature integration
- `logsnx-mobile` — Backend AI processing
- `mindivo` — Script generation automation

## Links
- Docs: https://docs.anthropic.com
- API Keys: https://console.anthropic.com/settings/keys
- Cookbook: https://github.com/anthropics/anthropic-cookbook
