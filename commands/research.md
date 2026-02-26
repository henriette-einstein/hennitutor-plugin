---
description: Systematically research a topic from trusted sources and write structured findings to a target file
allowed-tools: Bash, Read, Write, Edit, WebSearch, WebFetch, Glob, Grep
argument-hint: <topic or question> <target-file>
---

Systematically research the following topic and write structured findings to the specified target file: $ARGUMENTS

## Parameters

Extract from $ARGUMENTS:
- **topic**: The research question or topic to investigate
- **target-file**: The note name to write findings into (e.g. `research-MyProject`)

Both parameters are required. If either is missing, ask the user before proceeding.

## Steps

### 1. Read the target file

```bash
obsidian read file="<target-file>"
```

Check what has already been researched to avoid duplication.

### 2. Analyze the topic

- Break the topic into 3–6 search terms (in both English and German)
- Identify relevant subtopics, persons, events, and time periods
- Select the most suitable sources from the trusted source list below

### 3. Query trusted sources

Systematically fetch and search sources using WebFetch and WebSearch. Prioritize by relevance to the topic:

**Political Education & Contemporary History (DE):**
bpb.de, lpb-bw.de, fes.de, kas.de, ifz-muenchen.de, zzf-potsdam.de,
hsozkult.de, zeitgeschichte-online.de, 1000dokumente.de, lemo.dhm.de, dhm.de

**Academic & Encyclopedic:**
worldhistory.org, britannica.com, jstor.org, historicum.net,
deutsche-biographie.de, geschichtsquellen.de

**International & Modern History:**
history.state.gov, cvce.eu, firstworldwar.com, europeana.eu

**Quality Journalism:**
zeit.de/geschichte, spiegel.de/geschichte, nzz.ch

Always search in both English and German.

### 4. Evaluate each source

For every page or article found, assess:
- **Relevance**: high / medium / low
- **Type**: primary source / secondary source / overview / special study
- **Language**: German / English / other
- **Special features**: original documents, chronology, bibliography, etc.

Only include sources rated **high** or **medium** relevance. The research does not end until at least **6 sources** have been found, evaluated, and documented.

### 5. Search the vault for related notes

```bash
obsidian search query="<topic>"
obsidian search query="<key persons, events, or concepts>"
```

Note all related vault files for the "Related Topics in Vault" section.

### 6. Write findings to the target file

Get the absolute path, then append a new research section:

```bash
obsidian file file="<target-file>"
```

Append the following structure:

```markdown
## Research: <Topic>
_Researched on <date>_

### Overview

Detailed summary of the topic: what was found and which aspects are well covered.

### Sources

<Source Name> – <Article Title>

- **URL:** <exact article URL — verify it is reachable, no 404, no homepage URLs>
- **Type:** Overview / Primary Source / Special Study
- **Language:** English / German
- **Relevance:** High / Medium
- **Content:** What this source offers on the topic (2–4 sentences)
- **Especially interesting:** Specific sections, documents, or aspects
- **Vault links:** [[Topic]] [[Subtopic]] [[Person]]

---

<Next Source Name> – <Article Title>

...

### Potential Subtopics for Further Research

- [[Subtopic 1]] – Reason why it is worth exploring
- [[Subtopic 2]] – Reason
- [[Person]] – Reason
- [[Event]] – Reason

### Open Questions

- What is not yet well covered
- Which sources may still be missing

### Related Topics in Vault

- [[Existing Note]] – Connection to the current topic
```

### 7. Update modified date

```bash
obsidian property:set name=modified value=<today> file="<target-file>"
```

### 8. Report to user

Briefly state: how many sources were found and which were especially valuable. Suggest follow-up todos or vault notes to create based on the research.
