---
description: Create a new glossary entry in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <term>
---

Create a new term note in the currently open vault for: $ARGUMENTS

## Distinction: Term vs. Zettel
- **Term** = "What does this word mean?" (definition, etymology)
- **Zettel** = "What do I think about it?" (own thought)

## Steps

1. **Check**: `obsidian search query="<term>"` — abort if already exists

2. **Research**: Definition, etymology, synonyms, usage examples

3. **Find connections**: Search vault for related terms, Zettel, and MOCs:
   ```bash
   obsidian search query="<term>"
   obsidian search query="<related concepts>"
   ```

4. **Create**:
   ```bash
   obsidian create name="<Term>" path="40 Ressources/Terms" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Term]]"
created: 2026-02-24
modified: 2026-02-24
aliases: []
tags: []
sources: []
areas: []
---
```

## Content (50–300 words, prose, no semicolons)

Definition ("X is...") → etymology → synonyms/related terms → usage examples, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
