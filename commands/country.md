---
description: Create a new country note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Country name>
---

Create a new country note in the currently open vault for: $ARGUMENTS

## Steps

1. **Check**: `obsidian search query="<Country>"` — abort if already exists

2. **Research**: Capital, GPS, population, area, languages, religions, currency, flag URL

3. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<country name>"
   obsidian search query="<region or historical context>"
   ```

4. **Create**:
   ```bash
   obsidian create name="<Country>" path="40 Ressources/Countries" content="<yaml+body>" open
   ```

## YAML Template (capital is REQUIRED)

```yaml
---
type: "[[Country]]"
created: 2026-02-24
modified: 2026-02-24
capital: ["[[Capital]]"]
flag: "https://..."
location:
  - "51.1657"
  - "10.4515"
tags: []
areas: []
---
```

## Content (200–1000 words)

MUST include an "## Overview" section with bullet-point list:
- Capital, population, area, major cities, language(s), religions, currency

Then: historical context (prose), then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
