---
description: Create a new atomic Zettel note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <core thought or question>
---

Create a new Zettel in the currently open vault on: $ARGUMENTS

## Five Zettel Principles (always observe)

1. **Atomicity**: One Zettel = one thought
2. **Autonomy**: Understandable without context
3. **Own words**: Not just quotes — your own formulation
4. **Interconnection**: Make connections to other Zettel explicit
5. **Contextualization**: Cite sources, but do not depend on them

## Steps

1. **Check for similar Zettel**: `obsidian search query="<core topic>"` — abort if already exists

2. **Research context** (WebSearch): Facts to support the thought — do NOT become encyclopedic

3. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<core topic>"
   obsidian search query="<related concepts, persons, or events>"
   ```

4. **Formulate title**: Concise, describing the core thought in a few words
   Examples: "Resource nationalism as emancipation strategy", "The paradox of concession contracts"

5. **Create**:
   ```bash
   obsidian create name="<Title>" path="50 Zettelkasten/Zettel" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Zettel]]"
created: 2026-02-24
modified: 2026-02-24
tags: []
sources: []
areas: []
---
```

## Content Structure (100–300 words, prose, no semicolons)

Core statement in 1–3 sentences → elaboration (prose, no bullet points), then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
