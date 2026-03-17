---
name: brain
description: Capture engineering knowledge to the Second Brain Obsidian vault. Use when you want to save debugging notes, decisions, TILs, daily logs, braindumps, prompts, or project updates. Invoke with /brain or /brain <type>.
---

# Second Brain Capture

Capture session knowledge into the Obsidian vault.

**Vault root**: The directory containing this skill's parent repo (the directory that has `CLAUDE.md`). All paths below are relative to the vault root.

## Step 1: Determine Capture Type

Parse the user's intent from the command arguments:

| Argument | Action | Path |
|----------|--------|------|
| `debug` | Create debugging note | `03-resources/debugging/YYYY-MM-DD-<slug>.md` |
| `decision` | Create decision record | `01-projects/decisions/YYYY-MM-DD-<slug>.md` |
| `til` | Create TIL note | `03-resources/til/YYYY-MM-DD-<slug>.md` |
| `prompt` | Save a reusable AI prompt | `03-resources/prompts/YYYY-MM-DD-<slug>.md` |
| `dump` | Quick braindump — raw thought capture | `00-inbox/dump-YYYY-MM-DD-<slug>.md` |
| `daily` | Create/update daily log | `00-inbox/YYYY-MM-DD.md` |
| `project <name>` | Update project note | `01-projects/<name>.md` |
| `search <query>` | Search vault with Grep | — |
| `help` | Show available commands | — |
| _(no args)_ | Auto-detect from session context | — |

**For `help`**: Print this summary and stop — no file reads, no writes:
```
/brain commands:
  debug             Debugging note       → 03-resources/debugging/
  decision          Decision record      → 01-projects/decisions/
  til               Today I learned      → 03-resources/til/
  prompt            Reusable AI prompt   → 03-resources/prompts/
  dump <text>       Quick braindump      → 00-inbox/
  daily             Daily log            → 00-inbox/
  project <name>    Update project note  → 01-projects/
  search <query>    Search the vault
  help              This message
  (no args)         Auto-detect from session context
```

If no arguments and nothing worth capturing, say so — don't fabricate notes.

## Step 2: Gather Context

From the current session, extract:
- **Project** — check git remote, CLAUDE.md, or cwd
- **What happened** — bugs fixed, decisions made, patterns discovered
- **Key details** — file paths, error messages, code snippets

Do NOT read the whole vault. Only read a file if updating it.

## Step 3: Read Template and Write Note

1. Read the template: `templates/<type>.md` (relative to vault root — e.g., `templates/debugging-note.md`, `templates/decision-record.md`, `templates/til.md`, `templates/daily-log.md`, `templates/project.md`)
2. Ensure target directory exists: `mkdir -p <dir>`
3. Fill in the template with real content from the session — no placeholders
4. Write using the Write tool with **forward slashes**
5. Add appropriate tags from taxonomy: `#debugging`, `#decision`, `#til`, `#pattern`, `#claude-code`, plus any `#project/<name>` tags
6. Use `[[wikilinks]]` for cross-references

**For `dump`**: No template read needed. Write directly with this minimal format:
```
---
tags: [braindump, <auto-detect 1-2 relevant tags>]
date: "YYYY-MM-DD"
---
# <short title from content>

<user's raw text, lightly cleaned up — preserve voice, fix only typos>

## Action Items
- (only if obvious from the text, otherwise omit section)
```
Slug the filename from the first few words. No analysis, no classification pipeline — just capture fast.

**For `daily` logs**: check if today's file exists first. If yes, read it and append to the relevant sections. If no, create from template.

**For `project` updates**: read the existing note and update the **Current Status** section only.

## Step 4: Confirm

Tell the user briefly (1–2 lines):
- What was captured
- The file path
- Any `[[wikilinks]]` created
