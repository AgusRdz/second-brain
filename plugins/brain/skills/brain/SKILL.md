---
name: brain
description: Capture engineering knowledge to the Second Brain Obsidian vault. Use when you want to save debugging notes, decisions, TILs, daily logs, or project updates. Invoke with /brain or /brain <type>.
---

# Second Brain Capture

Capture session knowledge into the Obsidian vault at `C:\Users\agustin.rodriguez\dev\second-brain\`.

---

## Step 1: Determine Capture Type

Parse the user's intent from the command arguments:

| Argument | Action |
|----------|--------|
| `debug` | Create a debugging note |
| `decision` | Create a decision record |
| `til` | Create a TIL note |
| `daily` | Create/update today's daily log |
| `project <name>` | Update a project note |
| `search <query>` | Search vault with Grep |
| _(no args)_ | Analyze session context, auto-detect what's worth capturing |

If no arguments and nothing obvious to capture, ask the user what they'd like to save.

---

## Step 2: Gather Context

Look at the current session to extract:
- **What project** was being worked on (check git remote, CLAUDE.md, or cwd)
- **What happened** — bugs fixed, decisions made, patterns discovered
- **Key details** — file paths, error messages, code snippets, commands

Do NOT re-read the entire vault. Only read a target file if you need to update it.

---

## Step 3: Generate the Note

Use the appropriate format below. All paths use forward slashes with the Write tool.

### Vault base path
```
C:/Users/agustin.rodriguez/dev/second-brain/
```

### Debugging Note → `03-resources/debugging/YYYY-MM-DD-<slug>.md`

```markdown
---
tags:
  - debugging
  - project/<project-tag>
date: "YYYY-MM-DD"
project: "<project-name>"
---

# <Descriptive title of the bug>

## Problem

<What was observed. Include exact error messages, stack traces, or unexpected behavior.>

## Root Cause

<What was actually wrong. Be specific — which file, which line, which assumption was incorrect.>

## Solution

<Code changes or steps that fixed it. Include file paths.>

```<language>
// relevant code snippet
```

## Lessons Learned

<What would help catch this faster next time? Any patterns to watch for?>

## Related

- [[<project-note>]]
```

### Decision Record → `01-projects/decisions/YYYY-MM-DD-<slug>.md`

```markdown
---
tags:
  - decision
  - project/<project-tag>
date: "YYYY-MM-DD"
project: "<project-name>"
status: accepted
---

# Decision: <Short title>

## Context

<Why was this decision needed? What problem were we solving?>

## Options Considered

<Brief list of alternatives if discussed>

## Decision

<What was chosen and why.>

## Consequences

<Trade-offs, follow-up work needed, risks accepted.>

## Related

- [[<project-note>]]
```

### TIL → `03-resources/til/YYYY-MM-DD-<slug>.md`

```markdown
---
tags:
  - til
  - <topic-tag>
date: "YYYY-MM-DD"
topic: "<topic>"
---

# TIL: <One-line insight>

<Explanation with concrete example.>

```<language>
// code example if applicable
```

## Related

- [[<relevant-note>]]
```

### Daily Log → `00-inbox/YYYY-MM-DD.md`

First, check if today's log exists:

```bash
ls "C:/Users/agustin.rodriguez/dev/second-brain/00-inbox/YYYY-MM-DD.md"
```

If it **exists**, read it and **append** to the relevant sections.
If it **doesn't exist**, create it:

```markdown
---
tags:
  - daily
date: "YYYY-MM-DD"
---

# YYYY-MM-DD

## Worked On

- <What was done in this session, with [[project links]]>

## Blockers

- <Any blockers encountered, or "None">

## Decisions Made

- <Link to any decision records created>

## TIL

- <Link to any TILs created, or inline quick insights>

## Tomorrow

- <Next steps if known>
```

### Project Update → `01-projects/<project-name>.md`

Read the existing project note, then update the **Current Status** section with what was accomplished. Do not overwrite other sections.

---

## Step 4: Confirm

After writing, tell the user:
- What was captured
- The file path
- Any `[[wikilinks]]` that were created

Keep the confirmation brief — one or two lines.

---

## Step 5: Create Subdirectories If Needed

Before writing, ensure the target directory exists:

```bash
mkdir -p "C:/Users/agustin.rodriguez/dev/second-brain/03-resources/debugging"
mkdir -p "C:/Users/agustin.rodriguez/dev/second-brain/03-resources/til"
mkdir -p "C:/Users/agustin.rodriguez/dev/second-brain/01-projects/decisions"
```

---

## Token Efficiency

- Do NOT read the whole vault to find context — use the current session
- Write notes in one shot, no multi-step read-then-write for new files
- Keep confirmations short
- If the user says `/brain` with no context and nothing happened in the session worth capturing, just say so — don't fabricate notes
