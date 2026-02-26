---
description: Create a new city note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <City name>
---

Create a new city note in the currently open vault for: $ARGUMENTS

## Steps

1. **Check**: `obsidian search query="<City>"` — abort if already exists

2. **Research**: GPS coordinates, country, historical significance

3. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<city name>"
   obsidian search query="<country or region>"
   ```

4. **Create**:
   ```bash
   obsidian create name="<City>" path="40 Ressources/Cities" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[City]]"
created: 2026-02-24
modified: 2026-02-24
country: "[[Country]]"
location:
  - "48.1351"
  - "11.5820"
icon: building
color: red
tags: []
areas: []
---
```

## Content (200–1000 words, prose, no semicolons)

Geographic location → historical significance, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
