# Obsidian CLI Reference

Use `obsidian <command> [options]` via the Bash tool for ALL vault operations.
NEVER use MCP servers. Always add `2>&1` and filter output lines starting
with a timestamp + "Loading".

## Key Rules

1. **Vault**: CLI works automatically with the currently open vault
2. **File references**: `file=<name>` (filename without path/extension) or `path=<relative-path>`
3. **Content values**: Use `\n` for newlines, `\t` for tabs in content parameters
4. **Timeout**: CLI takes ~3 seconds to load; set timeout to 15000ms minimum

## Create Notes

```bash
# Create note with content
obsidian create name="<title>" path="<folder>" content="<yaml+body>"

# Create and open in Obsidian
obsidian create name="<title>" path="<folder>" content="<yaml+body>" open
```

Content format for `content=` parameter:
- Use `\n` for newlines
- Escape quotes with backslash
- Start with `---\ntype: ...` for YAML frontmatter

## Search

```bash
obsidian search query="<text>"               # Full-text search
obsidian search query="<text>" limit=10      # With result limit
obsidian search:context query="<text>"       # With surrounding context
```

## Read & Analyze

```bash
obsidian read file="<name>"                  # Read note content
obsidian outline file="<name>"              # Show heading structure
obsidian properties file="<name>"           # Read all YAML properties
obsidian property:read name=<prop> file="<name>"  # Read one property
```

## Edit

```bash
# Update a YAML property
obsidian property:set name=modified value=2026-02-24 file="<name>"

# Append content to note body
obsidian append file="<name>" content="<text>"

# Prepend content
obsidian prepend file="<name>" content="<text>"
```

## Links & Connections

```bash
obsidian backlinks file="<name>"            # Notes that link to this note
obsidian links file="<name>"               # Notes this note links to
obsidian orphans                            # Notes with no incoming links
obsidian deadends                           # Notes with no outgoing links
obsidian unresolved                         # Unresolved wikilinks in vault
```

## Vault Exploration

```bash
obsidian files folder="<path>"             # Files in a folder
obsidian files folder="<path>" total       # Count files in folder
obsidian tags sort=count counts            # All tags by frequency
obsidian vault                             # Vault overview stats
```

## Safety Rules

- `delete` + `permanent` flag: **Always ask user first**
- `property:remove`: Inform user which property is being removed
- `overwrite` on create: Warn user if file would be overwritten
- `move` / `rename`: Confirm destination with user before executing
- `history:restore` / `sync:restore`: Tell user which version is restored
