---
description: Create a new Map of Content (MOC) in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Title> [topic]
---

Create a new MOC note in the currently open vault for: $ARGUMENTS

## Types
- **Normal MOC** (no category): General map of content — filename: `MOC <Title>`
- **Topic** (category `[[Topic]]`): Thematic overview of a specific topic — filename: `Topic <Title>`

## Steps

1. **Determine type**: From $ARGUMENTS or derive from context

2. **Find related notes and connections**: Search vault broadly for notes to include and for connections:
   ```bash
   obsidian search query="<topic>"
   obsidian search query="<related concepts or events>"
   ```

3. **Build filename** per convention above

4. **Create**:
   ```bash
   obsidian create name="<Name>" path="50 Zettelkasten/MOCs" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[MOC]]"
categories: ["[[Topic]]"]   # only for Topic MOCs; omit for normal MOCs
created: 2026-02-24
modified: 2026-02-24
summary: ""
tags: []
areas: []
---
```

## Content (100–2000 words)

Brief introduction to the topic → structured collection of links with descriptions, grouped by H2/H3. End with a `## Connections` section for parent MOCs and related notes.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Forward links (notes not yet in the vault) are valid and encouraged.
