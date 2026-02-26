# Writing Rules

These rules apply to ALL text produced in the vault.

## Formatting

- **No H1 headings** in the note body. Obsidian shows the filename as the title.
- Start directly with text, or use `## H2` for subsections.
- **Note length**: Ideally under 500 characters (Zettelkasten atomicity).
  Exceptions: source excerpts, MOCs, essays.

## Writing Style: Prose Required

- Write in **continuous prose (Fließtext)**.
- **NO bullet points** for narrative descriptions, historical connections, or explanations.
- **Exceptions for lists:**
  - True enumerations (member lists, technical steps, data collections)
  - **Overview section for Countries** (type: Country): Compact bullet-point list
    (capital, population, area, major cities, language(s), religions, currency).
    All other sections remain prose.
- **Rule of thumb**: If you want to write a paragraph with bullet points — **don't**.
  Write sentences.

## Tone

- **Sober, scientific style**
- **Avoid adjectives**: No evaluative or decorative adjectives
  ("dramatic", "fateful", "massive", "important", "outstanding")
- **Show, don't tell**: Describe the facts, not the emotion
- **No em-dashes** (– or —): Restructure sentences using periods, commas,
  or subordinate clauses. Exception: connection lists may use `–` as separator
- **ABSOLUTE PROHIBITION: No semicolons (;)** in any context —
  in prose, in list descriptions, in link contexts, everywhere.
  Replace every semicolon with a period (new sentence) or comma.
  Before saving a note: explicitly check for `;` and remove it.

  Wrong: `- [[Link]] – First part; second part`
  Correct: `- [[Link]] – First part. Second part`
  Correct: `- [[Link]] – First part, second part`

- **Language**: German (unless otherwise required)

## Type-Specific Conventions

- **Event filename**: MUST include year/period in parentheses
  - Single day: `Battle of Waterloo (1815)`
  - Multi-year: `World War I (1914-1918)`
  - Examples: `Indian Uprising (1857)`, `Third Crusade (1189-1192)`
- **Event**: `start` and `end` dates are REQUIRED (identical for single-day events)
- **Person**: Biographical key data in YAML
- **Country**: Must contain an "Überblick" (Overview) section with base data

## Source Citations

- **Every source used MUST be entered in the YAML `sources` field.**
- Vault-internal sources as wikilinks: `"[[Book Note]]"`
- External web sources as URL strings: `"https://de.wikipedia.org/wiki/..."`
- The `sources` field MUST NOT be empty if research was performed.
- Sources are NOT listed in the body text as a separate "Sources" section.
  The YAML `sources` field is the only place.

## Connections Section

This section replaces earlier "References", "See also", or "Related" sections.

- **Every connection MUST have a brief description** (context!)
- **Format**: `- [[Link]] – Brief description of the relationship`
  (the dash is allowed here as list separator)
- For many references: **H3 headings** for grouping

```markdown
## Connections

### Process Chain
- [[Upstream]] – The previous stage of the value chain
- [[Downstream]] – The current area

### Key Concepts
- [[Refining]] – Central processing step
```
