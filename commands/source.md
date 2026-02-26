---
description: Create a new source note (article, video, audio) in the vault
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Title> [article|video|audio|documentation]
---

Create a new source note in the currently open vault for: $ARGUMENTS

For books: use the `/book` command instead.

## Subdirectory by Category
- Article → `60 Sources/Articles/`
- Video → `60 Sources/Videos/`
- Audio → `60 Sources/Audio/`
- Documentations → `60 Sources/Documentations/`

## Steps

1. **Determine category** from $ARGUMENTS or ask the user

2. **Check**: `obsidian search query="<Title>"` — abort if already exists

3. **Research metadata**: Authors, date, URL/DOI, duration (video/audio),
   journal/volume/issue (articles)

4. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<title or main topic>"
   obsidian search query="<author or field>"
   ```

5. **Create**:
   ```bash
   obsidian create name="<Title>" path="60 Sources/<Category>s" content="<yaml+body>" open
   ```

## YAML Template (Article)

```yaml
---
type: "[[Source]]"
categories: ["[[Article]]"]   # Article, Video, Audio, Documentations
created: 2026-02-24
modified: 2026-02-24
authors: ["[[Author]]"]
published: YYYY-MM-DD
journal: ""
url: "https://..."
tags: []
rating:
sources: []
areas: []
---
```

## Content (200–1000 words, prose, no semicolons)

Summary → main theses → relevance for research, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
