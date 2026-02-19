# Second Brain

Personal engineering knowledge base built with [Obsidian](https://obsidian.md/) and **automated by Claude Code**.

## How It Works

Claude Code **automatically captures** knowledge as you work — no manual note-taking required.

| What happens | What Claude writes | Where |
|--------------|-------------------|-------|
| Fix a bug | Debugging note (problem, root cause, solution) | `03-resources/debugging/` |
| Make a tech decision | Decision record (context, options, choice) | `01-projects/decisions/` |
| Discover a pattern | TIL note (insight + example) | `03-resources/til/` |
| Work on a project | Updates the project note status | `01-projects/` |

### Manual Trigger

Use `/brain` in any Claude Code session:
- `/brain` — auto-detect what's worth capturing
- `/brain debug` — create a debugging note
- `/brain decision` — create a decision record
- `/brain til` — create a TIL
- `/brain daily` — create/update today's daily log
- `/brain search <query>` — search the vault

## Structure (PARA Method)

| Folder | Purpose |
|--------|---------|
| `00-inbox/` | Daily logs, quick captures |
| `01-projects/` | Active project notes and decisions |
| `02-areas/` | Ongoing areas (architecture, code quality, DX) |
| `03-resources/` | Reference knowledge (patterns, playbooks, TILs, debugging notes) |
| `04-archive/` | Completed/inactive projects |
| `templates/` | Note templates (used by Obsidian and Claude) |

## Browsing in Obsidian

- **Graph View** (`Ctrl+G`) — visualize connections between notes
- **Search** — find notes by tag (`#debugging`, `#project/ciranet`, `#til`)
- **Daily Note** (`Ctrl+N`) — opens today's log in inbox
- **Backlinks** — see what links to the current note

## Tag Taxonomy

| Tag | Use for |
|-----|---------|
| `#project/ciranet` | Ciranet monorepo work |
| `#project/dx` | Developer experience tooling |
| `#debugging` | Bug investigations and fixes |
| `#decision` | Architecture/design decisions |
| `#til` | Today I Learned entries |
| `#pattern` | Reusable patterns and conventions |
| `#angular` | Angular-specific knowledge |
| `#dotnet` | .NET backend knowledge |
| `#git` | Git workflows and tips |
| `#claude-code` | Claude Code plugin/skill development |
