---
description: Create a new organization note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Organization name> [company|institution|party]
---

Create a new organization note in the currently open vault for: $ARGUMENTS

## Steps

1. **Check**: `obsidian search query="<Name>"` — abort if already exists
2. **Research**: Founding, dissolution, headquarters, objectives, key activities
3. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<organization name>"
   obsidian search query="<field, persons, or events>"
   ```
4. **Create**:
   ```bash
   obsidian create name="<Name>" path="40 Ressources/Organizations" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Organization]]"
categories: ["[[Institution]]"]   # Company, Institution, Party
created: 2026-02-24
modified: 2026-02-24
founded: YYYY-MM-DD
dissolved: YYYY-MM-DD
headquarter: "[[Location]]"
tags: []
sources: []
areas: []
---
```

## Content (400–1500 words, prose, no semicolons)

Founding/context → objectives → activities → significance, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
