---
name: vault-knowledge
description: >
  This skill should be used for ALL operations on any Obsidian vault managed
  with this plugin. Load it when the user wants to create, edit, search, or
  link notes of any type (person, event, zettel, term, source, book, moc, essay,
  city, country, location, organization, note, area), or when
  they ask about vault structure, YAML rules, or writing style. Also use for
  "/person", "/event", "/zettel", "/term", "/source", "/moc", "/essay",
  "/city", "/country", "/location", "/organization", "/note", "/book",
  "/area", "/connections", "/project", "/research", "/process-todo",
  "/vault-search", "/vault-edit" commands.
version: 0.1.0
---

# Obsidian Vault Knowledge

This skill governs ALL interactions with the currently open Obsidian vault.
The vault is whichever folder the user has selected and given Cowork access to.
Every note operation MUST follow the rules in the reference files below.

## Core Rules (Always Apply)

- **Language**: Check `.claude/CLAUDE.md` in the vault root for a "Writing Language"
  setting — if present, use that language for all note content. Default to **German**
  when no configuration file exists. Default to **English**.
- **No H1 headings** in note body — Obsidian shows the filename as title
- **Prose only** — no bullet points for narrative content (see writing rules)
- **No semicolons (;)** anywhere — use period or comma instead
- **No em-dashes (– or —)** in prose — restructure as separate sentences.
  Exception: connection lists use `–` as separator
- **Scientific tone** — no evaluative adjectives ("dramatic", "important", etc.)
- **YAML sources field** — MUST be filled whenever research was performed
- **modified field** — MUST be updated on every edit (today's date)

## Vault Operations: Always Use Obsidian CLI

Use the `obsidian` CLI command (via Bash tool) for ALL vault interactions.
NEVER use MCP servers for vault operations.

Key CLI patterns:
```bash
obsidian search query="<text>"              # search notes
obsidian create name="<title>" path="<folder>" content="<yaml+body>"  # create note
obsidian read file="<name>"                 # read note content
obsidian properties file="<name>"           # read YAML properties
obsidian property:set name=<prop> value=<val> file="<name>"  # update property
obsidian append file="<name>" content="<text>"  # append content
obsidian backlinks file="<name>"            # find linking notes
obsidian orphans                            # notes without incoming links
```

Filter CLI output: ignore lines starting with a timestamp + "Loading".

## Workflow for Creating Notes

1. **Check for duplicates**: `obsidian search query="<name>"` — abort if exists
2. **Research**: Use WebSearch + WebFetch for factual content
3. **Find related notes**: `obsidian search query="<topic>"` for connections
4. **Build content**: Follow note type rules (see `references/note-types.md`)
5. **Validate YAML**: Check all required fields (see `references/yaml-rules.md`)
6. **Create via CLI**: `obsidian create name="<title>" path="<folder>" content="..."`
7. **Open in Obsidian**: Add `open` flag to the create command

## Vault Path Detection

The vault path is the folder the user has selected in Cowork. It is mounted
under `/sessions/.../mnt/<FolderName>`. To determine the full path for direct
file writes, use:

```bash
obsidian file file="<name>"   # shows the full absolute path of the note
```

Alternatively, resolve it from the mounted folder path that Cowork provides.

## Workflow for Editing Notes

1. **Read current content**: `obsidian read file="<name>"`
2. **Make targeted changes** using `obsidian property:set` for YAML fields
   or `obsidian append` / `obsidian prepend` for body additions
3. **For full rewrites**: First get the absolute path with `obsidian file file="<name>"`,
   then use the Write tool on that path
4. **Always update modified**: `obsidian property:set name=modified value=<today> file="<name>"`

## Directory Structure

```
00 Inbox/           → Unprocessed notes
10 Journal/         → Daily notes (YYYY/YYYY-MM-DD.md)
20 Projects/        → Projects, publications
30 Areas/           → Areas of interest
40 Ressources/      → Entities and reference material
   Cities/          → Cities
   Countries/       → Countries
   Events/          → Historical events
   Locations/       → Other places (regions, POIs, continents)
   Notes/           → Documents (FAQ, How-To, Instruction)
   Organizations/   → Institutions, companies
   Pages/           → System pages
   Persons/         → Biographical notes
   Terms/           → Glossary, definitions
   Timelines/       → Chronological lists
50 Zettelkasten/    → Permanent knowledge store
   Essays/          → Fully written texts
   MOCs/            → Maps of Content
   Zettel/          → Atomic thoughts
60 Sources/         → Bibliography
   Articles/        → Articles
   Audio/           → Podcasts and audio
   Books/           → Books
   Documentations/  → Documentations
   Videos/          → Videos
80 Media/           → Attachments, images, PDFs
90 System/          → Templates, schema, context, bases
```

## Reference Files

Load these when needed for specific operations:

- `references/yaml-rules.md` — Full YAML frontmatter specification
- `references/note-types.md` — All 13 note types with required fields
- `references/writing-rules.md` — Prose style, tone, formatting rules
- `references/cli-guide.md` — Complete Obsidian CLI command reference
