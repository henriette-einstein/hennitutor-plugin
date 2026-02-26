---
description: Process the todo list of the current project step by step and mark completed todos as done
allowed-tools: Bash, Read, Write, Edit, Glob, Grep, WebSearch, WebFetch
argument-hint: <project-name>
---

Process the todo list of the specified project step by step: $ARGUMENTS

## Parameters

Extract **project-name** from $ARGUMENTS. If not provided, look for the active project in `20 Projects/` — if there is exactly one, use it. If there are multiple, ask the user which project to process.

## Todo File Format

Todos are stored in `todo-<Name>.md` as markdown checkboxes:
- `- [ ]` — open todo
- `- [x]` — completed todo

## Steps

### 1. Read the todo file

```bash
obsidian read file="todo-<Name>"
obsidian file file="todo-<Name>"   # get absolute path for writing
```

Collect all `- [ ]` items. Process them in order, one at a time.

### 2. For each open todo — execute, then mark as done

Work through all open todos sequentially. After successfully completing each one, update the todo file immediately: change `- [ ]` to `- [x]` for that line. Do not wait until the end to mark todos as done.

**Special todo: "Explore the goal"**
Run the `/research` command with the project goal and the research file as target:
```
/research <goal> research-<Name>
```
Read the project goal from the project file (`<Name>.md`, section `## Goal`) before running the research.

**Special todo: "Process research"**
1. Read the research file:
   ```bash
   obsidian read file="research-<Name>"
   ```
2. Analyze the content: identify actionable next steps, open questions, subtopics, and persons/events/organizations worth exploring further.
3. Derive a concrete list of new todos from the research findings. Each new todo should be specific and actionable (e.g. "Create note for [[Person X]]", "Research subtopic Y", "Create Zettel about finding Z").
4. Append the new todos to the todo file as open `- [ ]` items under a new section `## From Research`:
   ```bash
   obsidian append file="todo-<Name>" content="..."
   ```
5. Mark "Process research" as done.

**All other todos**
Execute the todo as described. Use the appropriate vault commands or skills as needed (e.g. create a note with `/person`, `/event`, `/zettel`, etc. if the todo calls for it). If a todo is ambiguous, use best judgment or ask the user for clarification.

### 3. Update modified date of the todo file

```bash
obsidian property:set name=modified value=<today> file="todo-<Name>"
```

### 4. Report to user

After all open todos have been processed, report:
- Which todos were completed
- Which new todos were added (if "Process research" was run)
- How many todos remain open (if any were skipped or added)
