---
description: Create a new person note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Name> [era/context]
---

Create a new person note in the currently open vault for: $ARGUMENTS

## Steps

1. **Check for duplicates**: `obsidian search query="<Name>"` — abort if already exists

2. **Research** (WebSearch + WebFetch):
   - Wikipedia (German preferred), biographical encyclopedias
   - Collect: born, died, country, categories, portrait URL, tags, areas
   - Note all sources used for the `sources` field

3. **Find connections**: Search vault across multiple dimensions for the Connections section and for forward links (notes that do not yet exist):
   ```bash
   obsidian search query="<person name>"
   obsidian search query="<era, country, or field>"
   ```

4. **Validate YAML**: type, created, modified are required

5. **Create note** via Obsidian CLI:
   ```bash
   obsidian create name="<Name>" path="40 Ressources/Persons" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Person]]"
categories: ["[[Politician]]"]   # Author, Politician, Ruler, Soldier, Entrepreneur
created: 2026-02-24
modified: 2026-02-24
born: YYYY-MM-DD
died: YYYY-MM-DD
country: "[[Country]]"
portrait: "https://..."
tags: []
sources: []
areas: []
---
```

## Content Structure (prose, no H1, no semicolons)

Biographical overview (2–3 paragraphs), then main areas of impact as H2 sections, then a `## Connections` section at the end. No semicolons, no em-dashes in prose, no evaluative adjectives.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
