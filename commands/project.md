---
description: Create a new project with project file, todo list, and research file
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
argument-hint: <Project Name>
---

Create a new project in the vault for: $ARGUMENTS

## Steps

### 1. Determine project name
Extract the project name from $ARGUMENTS. If not provided, ask the user.

### 2. Ask for the project goal
Ask the user: "What is the goal of this project?"
Wait for the answer before proceeding.

### 3. Create the project folder and three files

Create all three files inside `20 Projects/<Name>/`:

**Project file** (`<Name>.md`):
```yaml
---
type: "[[Project]]"
created: 2026-02-24
modified: 2026-02-24
status: active
tags: []
areas: []
---
```
```markdown
## Goal

<The goal the user stated>

## Notes

## Connections

- [[todo-<Name>]] – Todo list for this project
- [[research-<Name>]] – Research file for this project
```

**Todo file** (`todo-<Name>.md`):
```yaml
---
type: "[[Note]]"
created: 2026-02-24
modified: 2026-02-24
tags: [todo]
---
```
```markdown
## Todos

- [ ] Explore the goal — run `/research <goal> research-<Name>`
- [ ] Process research
<additional todos derived from the goal>
```

**Research file** (`research-<Name>.md`):
```yaml
---
type: "[[Note]]"
created: 2026-02-24
modified: 2026-02-24
tags: [research]
---
```
```markdown
## Research: <Name>

_This file is populated by the `/research` command._
```

Use `obsidian create` for each file:
```bash
obsidian create name="<Name>" path="20 Projects/<Name>" content="<yaml+body>" open
obsidian create name="todo-<Name>" path="20 Projects/<Name>" content="<yaml+body>"
obsidian create name="research-<Name>" path="20 Projects/<Name>" content="<yaml+body>"
```

### 4. Generate the todo list

Based on the project goal, derive a meaningful list of todos that would lead to achieving it. Add them to the todo file after the first two todos. Keep todos concrete and actionable. The first two todos are always:

```markdown
- [ ] Explore the goal — run `/research <goal> research-<Name>`
- [ ] Process research
```

### 5. Invoke /process-todo

After the project and todo list have been created, immediately invoke the `/process-todo` command:

```
/process-todo <Name>
```

This begins executing the todos right away, starting with "Explore the goal".
