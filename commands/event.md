---
description: Create a new historical event note in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <EventName> [time period]
---

Create a new event note in the currently open vault for: $ARGUMENTS

## Steps

1. **Check for duplicates**: `obsidian search query="<EventName>"` — abort if exists

2. **Build filename**: Must include year/period in parentheses
   - Single day: `Assassination at Sarajevo (1914)`
   - Multi-year: `World War I (1914-1918)`

3. **Research** (WebSearch + WebFetch):
   - Exact dates: start (YYYY-MM-DD), end (YYYY-MM-DD)
   - Location (where), participants, context, sequence, consequences
   - Note all sources for the `sources` field

4. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<event name>"
   obsidian search query="<participants, location, or time period>"
   ```

5. **Validate YAML**: start and end are REQUIRED (identical for single-day events)

6. **Create**:
   ```bash
   obsidian create name="<Title (Year)>" path="40 Ressources/Events" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Event]]"
categories: ["[[Conflict]]"]   # Conflict, Political-Event, Crisis, Conference
created: 2026-02-24
modified: 2026-02-24
start: YYYY-MM-DD
end: YYYY-MM-DD
where: "[[Location]]"
participants: ["[[Actor1]]", "[[Actor2]]"]
tags: []
sources: []
areas: []
---
```

## Content Structure (prose, no H1, no semicolons)

Context/background → sequence → actors → consequences → significance. All prose, H2 for main sections, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
