---
name: brain
description: Capture engineering knowledge to the Second Brain Obsidian vault. Use when you want to save debugging notes, decisions, TILs, daily logs, or project updates. Invoke with /brain or /brain <type>.
---

# Second Brain Capture

Capture session knowledge into the Obsidian vault.

**Vault base**: `C:/Users/agustin.rodriguez/dev/second-brain/`

## Step 1: Determine Capture Type

Parse the user's intent from the command arguments:

| Argument | Action | Path |
|----------|--------|------|
| `debug` | Create debugging note | `03-resources/debugging/YYYY-MM-DD-<slug>.md` |
| `decision` | Create decision record | `01-projects/decisions/YYYY-MM-DD-<slug>.md` |
| `til` | Create TIL note | `03-resources/til/YYYY-MM-DD-<slug>.md` |
| `daily` | Create/update daily log | `00-inbox/YYYY-MM-DD.md` |
| `project <name>` | Update project note | `01-projects/<name>.md` |
| `search <query>` | Search vault with Grep | — |
| _(no args)_ | Auto-detect from session context | — |

If no arguments and nothing worth capturing, say so — don't fabricate notes.

## Step 2: Gather Context

From the current session, extract:
- **Project** — check git remote, CLAUDE.md, or cwd
- **What happened** — bugs fixed, decisions made, patterns discovered
- **Key details** — file paths, error messages, code snippets

Do NOT read the whole vault. Only read a file if updating it.

## Step 3: Read Template and Write Note

1. Read the template: `templates/<type>.md` (e.g., `templates/debugging-note.md`, `templates/decision-record.md`, `templates/til.md`, `templates/daily-log.md`, `templates/project.md`)
2. Ensure target directory exists: `mkdir -p <dir>`
3. Fill in the template with real content from the session — no placeholders
4. Write using the Write tool with **forward slashes**
5. Add appropriate tags from taxonomy: `#debugging`, `#decision`, `#til`, `#pattern`, `#project/ciranet`, `#project/dx`, `#angular`, `#dotnet`, `#git`, `#claude-code`
6. Use `[[wikilinks]]` for cross-references

**For `daily` logs**: check if today's file exists first. If yes, read it and append to the relevant sections. If no, create from template.

**For `project` updates**: read the existing note and update the **Current Status** section only.

## Step 4: Confirm

Tell the user briefly (1–2 lines):
- What was captured
- The file path
- Any `[[wikilinks]]` created
