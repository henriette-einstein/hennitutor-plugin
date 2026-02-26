---
description: Create a new area of interest in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Topic>
---

Create a new area of interest note in the currently open vault for: $ARGUMENTS

## Steps

1. **Check**: `obsidian search query="<Topic>"` — abort if already exists
2. **Find related notes and connections**: Which existing notes belong to this area? Also consider forward links:
   ```bash
   obsidian search query="<topic>"
   obsidian search query="<related areas or concepts>"
   ```
3. **Filename**: `Area <Topic>` (e.g. "Area Ottoman Empire")
4. **Create**:
   ```bash
   obsidian create name="Area <Topic>" path="30 Areas" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Area]]"
created: 2026-02-24
modified: 2026-02-24
tags: []
---
```

## Content

Description of the area of interest → key topics → links to relevant MOCs, Zettel, and sources, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
