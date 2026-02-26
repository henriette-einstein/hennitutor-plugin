---
description: Create a new book note in the vault (with ISBN/cover lookup)
allowed-tools: Bash, WebSearch, WebFetch, Glob, Grep, Read
argument-hint: <Title> [Author]
---

Create a new book note in the currently open vault for: $ARGUMENTS

## Filename Convention: `<LastName> - <Title>.md`

## Steps

1. **Check**: `obsidian search query="<Title>"` — abort if already exists

2. **Research metadata** (WebSearch):
   - ISBN, page count, publisher, publication year, authors
   - Cover URL (Open Library, Google Books, publisher website)
   - Search: `"<Title>" "<Author>" ISBN site:openlibrary.org OR site:books.google.com`

3. **Find connections**: Search vault for related notes and forward links:
   ```bash
   obsidian search query="<title or main topic>"
   obsidian search query="<author or field>"
   ```

4. **Build filename**: `<LastName> - <Title>`

5. **Create**:
   ```bash
   obsidian create name="<LastName> - <Title>" path="60 Sources/Books" content="<yaml+body>" open
   ```

## YAML Template

```yaml
---
type: "[[Source]]"
categories: ["[[Book]]"]
created: 2026-02-24
modified: 2026-02-24
authors: ["[[LastName, FirstName]]"]
published: YYYY-MM-DD
isbn: "978-..."
pages: 0
publisher: ""
cover: "https://..."
tags: []
rating:
sources: []
areas: []
---
```

## Content (200–1000 words, prose, no semicolons)

Summary of the content → main theses → relevance → key quotes, then a `## Connections` section at the end.

```markdown
## Connections

- [[Related Note]] – Brief description of the relationship
```

Group with H3 headings if there are many connections. Forward links (notes not yet in the vault) are valid and encouraged.
