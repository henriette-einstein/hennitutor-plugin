---
description: Create a new note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Title>
---

Create a new note in the currently open vault for: $ARGUMENTS

## Distinction
- Note = methodological knowledge (how to do something?)
- Zettel = substantive knowledge (what do I think about it?)

## Steps

1. **Check**: `obsidian search query="<Title>"` — abort if already exists
2. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<title or topic>"
   ```
3. **Create**:
   ```bash
   obsidian create name="<Title>" path="40 Ressources/Notes" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Note]]"
created: 2026-02-24
modified: 2026-02-24
tags: []
areas: []
---
```

## Content (prose + lists allowed for steps)

End with a `## Connections` section.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Forward links (notes not yet in the vault) are valid and encouraged.
