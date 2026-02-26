---
description: Create a new essay in the vault (mini or normal)
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Title> [mini|normal]
---

Create a new essay note in the currently open vault for: $ARGUMENTS

## Essay Types
- **Mini-Essay**: 500–1500 words, single argument, intro → arguments → conclusion
- **Normal Essay**: 1500–5000 words, complex argumentation with multiple threads

## Steps

1. **Determine type**: From $ARGUMENTS or ask the user

2. **Find relevant Zettel and connections**: Search vault for source material and related notes:
   ```bash
   obsidian search query="<topic>"
   obsidian search query="<related concepts or events>"
   ```

3. **Create**:
   ```bash
   obsidian create name="<Title>" path="50 Zettelkasten/Essays" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Essay]]"
categories: ["[[Mini-Essay]]"]   # Mini-Essay, Normal Essay
created: 2026-02-24
modified: 2026-02-24
status: draft
tags: []
areas: []
sources: []
---
```

## Content (prose, no semicolons, no H1)

Introduction with core thesis → chain of arguments → conclusion. The essay synthesizes existing Zettel into a coherent narrative. End with a `## Connections` section.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
