---
description: Edit an existing note in the vault
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
argument-hint: <note name> [what should be changed]
---

Edit an existing note in the currently open vault: $ARGUMENTS

## Workflow

### 1. Find the note
```bash
obsidian search query="<Name>"
```
If multiple hits: ask the user to choose.

### 2. Read content
```bash
obsidian read file="<name>"
obsidian properties file="<name>"
```

### 3. Apply changes

**Update a single YAML field:**
```bash
obsidian property:set name=<prop> value=<val> file="<name>"
```

**Append text to note body:**
```bash
obsidian append file="<name>" content="<text>"
```

**Complex changes** (restructuring, larger rewrites):
1. Get absolute path: `obsidian file file="<name>"` (returns the full path)
2. Read content: `obsidian read file="<name>"`
3. Build complete new content
4. Write to the absolute path using the Write tool

### 4. Always update the modified date
```bash
obsidian property:set name=modified value=2026-02-24 file="<name>"
```

### 5. Validation
After editing, check:
- No semicolon (;) in the text
- No H1 in the body
- All required YAML fields present
- sources field filled if research was performed

## Safety Rules
- Always ask the user before destructive changes
- For `delete`: require explicit user confirmation
- For `move`/`rename`: communicate destination before executing
