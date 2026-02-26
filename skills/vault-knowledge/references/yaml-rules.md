# YAML Frontmatter Rules

Rules for the YAML frontmatter of EVERY note in the vault.

## Required Fields (All Notes)

```yaml
type: "[[TypeName]]"   # REQUIRED: Wikilink to the type
created: YYYY-MM-DD    # REQUIRED: Creation date
modified: YYYY-MM-DD   # REQUIRED: Update on every change
```

## Recommended Fields

```yaml
tags: []               # Thematic tags (see tag rules below)
sources: ["[[Source]]"] # Source citations (wikilinks OR URLs)
categories: ["[[Cat]]"] # Subcategories as wikilinks
areas: ["[[Area]]"]    # Areas of interest as wikilinks
```

## Sources Rule: Always Cite Research

If any research was performed, `sources` MUST NOT be empty.

```yaml
# Vault-internal sources (books, articles in the vault):
sources:
  - "[[Barr - Lords of the Desert]]"

# External web sources:
sources:
  - "https://de.wikipedia.org/wiki/Irakischer_Aufstand"

# Mixed:
sources:
  - "[[Barr - Lords of the Desert]]"
  - "https://de.wikipedia.org/wiki/Irakischer_Aufstand"
```

## Data Type Rules

| Type    | Format               | Example                  |
|---------|----------------------|--------------------------|
| Text    | Simple string        | `title: "My Title"`      |
| Link    | Wikilink in quotes   | `type: "[[Zettel]]"`     |
| Date    | YYYY-MM-DD           | `created: 2025-12-15`    |
| Number  | Integer/decimal      | `pages: 350`             |
| Boolean | true/false           | `published: true`        |
| List    | YAML array           | `tags: [history, oil]`   |

## Multi-Value Properties: ALWAYS Lists

```yaml
# CORRECT:
tags: [history, imperialism, oil]
sources: ["[[Book Title]]", "[[Article]]"]
categories: ["[[Author]]", "[[Politician]]"]

# WRONG:
tags: history, imperialism
sources: [[Book Title]]
```

## Dates: Only YYYY-MM-DD

```yaml
# CORRECT:  created: 2025-12-15
# WRONG:    created: 15.12.2025
```

## Tags: Thematic Only, Lowercase

- Lowercase, kebab-case only
- NO redundancy with `type` (no `person`, `biography`)
- NO status tags (no `draft`, `review`)

```yaml
# CORRECT: tags: [oil, politics, middle-east]
# WRONG:   tags: [Person, biography, draft]
```

## Categories: Always Wikilinks with Uppercase

```yaml
# CORRECT: categories: ["[[Author]]", "[[Politician]]"]
# WRONG:   categories: [author, politician]
```

## GPS Coordinates (City, Country, Location): List of Strings

```yaml
# CORRECT:
location:
  - "41.0082"
  - "28.9759"

# WRONG:
location: "41.0082, 28.9759"
location: [41.0082, 28.9759]
```

## Type-Specific Required Fields

### Event — start and end are REQUIRED
```yaml
type: "[[Event]]"
created: YYYY-MM-DD
modified: YYYY-MM-DD
start: YYYY-MM-DD    # REQUIRED
end: YYYY-MM-DD      # REQUIRED (same as start for single-day events)
```

### Country — capital is REQUIRED
```yaml
type: "[[Country]]"
capital: ["[[Capital City]]"]  # REQUIRED
flag: "https://..."            # Recommended
```

## Recommended Property Order

`type → categories → created → modified → type-specific fields → tags → sources → areas`

## Complete Property Reference

| Property     | Type  | Description                              |
|--------------|-------|------------------------------------------|
| type         | Link  | Note type as wikilink                    |
| categories   | List  | Subcategories as wikilinks               |
| created      | Date  | Creation date                            |
| modified     | Date  | Last modification                        |
| tags         | List  | Thematic keywords                        |
| sources      | List  | Source citations as wikilinks or URLs    |
| areas        | List  | Areas of interest as wikilinks           |
| born         | Date  | Birth date (Person)                      |
| died         | Date  | Death date (Person)                      |
| country      | Link  | Country of origin (Person, City)         |
| start        | Date  | Start date (Event)                       |
| end          | Date  | End date (Event)                         |
| where        | Link  | Location (Event)                         |
| participants | List  | Participants (Event)                     |
| founded      | Date  | Founding date (Organization)             |
| dissolved    | Date  | Dissolution date (Organization)          |
| headquarter  | Link  | Headquarters (Organization)              |
| location     | List  | GPS coordinates as strings               |
| capital      | List  | Capital city as wikilink (Country)       |
| flag         | Text  | Flag URL (Country)                       |
| authors      | List  | Authors as wikilinks (Source)            |
| published    | Date  | Publication date (Source)                |
| isbn         | Text  | ISBN (Book)                              |
| pages        | Number| Page count (Book)                        |
| publisher    | Text  | Publisher (Book)                         |
| cover        | Text  | Cover image URL (Book)                   |
| aliases      | List  | Alternative names (Term)                 |
| status       | Text  | Draft status (Essay)                     |
| summary      | Text  | 1–2 sentence description of the note     |
| rating       | Number| Rating 1–5 (Source)                      |
| portrait     | Text  | Portrait URL (Person)                    |
