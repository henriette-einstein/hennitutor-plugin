---
description: Find and insert connections into an existing note
allowed-tools: Bash, Read, Write, Edit, Glob, Grep, WebSearch, WebFetch
argument-hint: <note name>
---

Find relevant connections for the note and insert them as a `## Connections` section: $ARGUMENTS

## Steps

### 1. Find and read the note
```bash
obsidian search query="<Name>"
```
If multiple hits: ask the user to choose. Then read content and metadata:
```bash
obsidian read file="<name>"
obsidian properties file="<name>"
obsidian backlinks file="<name>"
```

### 2. Analyze the note
Understand the core topic, type, and existing connections. Check if a `## Connections` section already exists — if so, extend it rather than replace it.

### 3. Search the vault for related notes
Use multiple targeted searches across dimensions relevant to the note:
```bash
obsidian search query="<core topic>"
obsidian search query="<persons, events, or concepts mentioned>"
obsidian search query="<time period or region>"
obsidian tags tag="<relevant tag>"
```

### 4. Identify connections
Gather candidates from vault hits AND your own knowledge. Connections may point to notes that do not yet exist — these are forward links and are explicitly allowed and encouraged.

For each connection, determine:
- The link target (existing note title or a meaningful future note title)
- A brief description of the relationship (one clause, no semicolons)
- A grouping category (if there are many connections)

### 5. Build the Connections section

**Simple (few connections, no grouping needed):**
```markdown
## Connections

- [[Note A]] – Brief description of the relationship
- [[Note B]] – Brief description of the relationship
```

**Grouped (many connections):**
```markdown
## Connections

### Persons
- [[Person A]] – Role or relation to this note

### Events
- [[Event X (1914-1918)]] – How it relates

### Concepts
- [[Term Y]] – Why it is relevant here
```

### 6. Insert into note

If no `## Connections` section exists — append:
```bash
obsidian append file="<name>" content="<connections block>"
```

If a `## Connections` section already exists — use Write tool for a full rewrite (get path first):
```bash
obsidian file file="<name>"
```

### 7. Update modified date
```bash
obsidian property:set name=modified value=2026-02-24 file="<name>"
```

## Rules
- Every connection MUST have a description — never a bare link
- Format: `- [[Link]] – Description` (em-dash as separator is allowed here)
- No semicolons in descriptions
- Forward links (notes that do not exist yet) are valid and valuable
- Do not duplicate connections that already exist in the note
