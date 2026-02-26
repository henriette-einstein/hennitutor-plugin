---
description: Create a new location note (region, POI, continent, historical region)
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Name> [region|poi|continent|historical-region]
---

Create a new location note in the currently open vault for: $ARGUMENTS

For cities: use `/city` | For countries: use `/country`

## Categories
Region, POI, Historical Region, Continent

## Steps

1. **Check**: `obsidian search query="<Name>"` — abort if already exists
2. **Determine category** from $ARGUMENTS
3. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<location name>"
   obsidian search query="<country or historical context>"
   ```
4. **Create**:
   ```bash
   obsidian create name="<Name>" path="40 Ressources/Locations" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Location]]"
categories: ["[[Region]]"]   # Region, POI, Historical Region, Continent
created: 2026-02-24
modified: 2026-02-24
country: "[[Country]]"
location:
  - "latitude"
  - "longitude"
tags: []
areas: []
---
```

## Content (200–1000 words, prose, no semicolons)

Description → historical significance, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
