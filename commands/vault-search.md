---
description: Search for notes in the vault
allowed-tools: Bash, Grep, Glob
argument-hint: <search term> [--context] [--tag <tag>] [--type <type>]
---

Search in the currently open vault for: $ARGUMENTS

## Search Strategies

### Full-text search (default)
```bash
obsidian search query="<term>" limit=20
```

### Search with context snippets
```bash
obsidian search:context query="<term>" limit=10
```

### Search by tag
```bash
obsidian tag name=<tag> verbose
```

### Filter by note type
Combine full-text search with Glob patterns:
```
Glob: "40 Ressources/Persons/*.md"   → persons only
Glob: "50 Zettelkasten/Zettel/*.md"  → Zettel only
Glob: "40 Ressources/Events/*.md"    → events only
```

### Orphaned notes (no incoming links)
```bash
obsidian orphans
```

### Dead ends (no outgoing links)
```bash
obsidian deadends
```

## Presenting Results

Present hits in a structured way: title, type, brief description from the
context snippet. With many hits: prioritize by relevance and state total count.
Filter output: ignore lines starting with timestamp + "Loading".
