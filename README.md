# Second Brain

A template for building a **personal knowledge base** powered by [Claude Code](https://docs.anthropic.com/en/docs/claude-code) and [Obsidian](https://obsidian.md/).

Claude Code automatically captures debugging notes, decisions, TILs, and project updates as you work — no manual note-taking required. Browse and connect your knowledge in Obsidian.

Works for developers, PMs, designers — anyone using Claude Code.

## Quick Start

1. **Use this template** — click "Use this template" on GitHub (or clone the repo)
2. **Run setup** — this adds auto-capture rules to your Claude Code config:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```
3. **Open in Obsidian** — open the repo folder as an Obsidian vault
4. **Start working** — Claude Code will automatically capture knowledge as you code

## How It Works

### Automatic Capture

When Claude Code detects a noteworthy event during your session, it writes a note to the vault:

| What happens | Note type | Where |
|--------------|-----------|-------|
| Fix a bug | Debugging note | `03-resources/debugging/` |
| Make a tech decision | Decision record | `01-projects/decisions/` |
| Discover a pattern or gotcha | TIL | `03-resources/til/` |
| Work on a project | Project note update | `01-projects/` |

### Manual Capture with `/brain`

Use the `/brain` command in any Claude Code session:

```
/brain              Auto-detect what to capture from session context
/brain debug        Create a debugging note
/brain decision     Create a decision record
/brain til          Create a TIL (Today I Learned)
/brain daily        Create or update today's daily log
/brain dump <text>  Quick braindump — capture a raw thought
/brain project X    Update a project note
/brain search Q     Search the vault
/brain help         Show all commands
```

## Note Types

| Type | Template | Good for |
|------|----------|----------|
| Debugging note | `templates/debugging-note.md` | Bug investigations — problem, root cause, solution |
| Decision record | `templates/decision-record.md` | Architecture & design choices — context, options, consequences |
| TIL | `templates/til.md` | Quick learnings — command, trick, or insight with example |
| Daily log | `templates/daily-log.md` | End-of-day summary — worked on, blockers, decisions, tomorrow |
| Project note | `templates/project.md` | Project overview — links, stack, status, architecture |
| Area note | _(freeform)_ | Ongoing responsibilities — standards, checklists, practices |

See `examples/` for sample notes showing each format.

## Folder Structure (PARA Method)

```
00-inbox/          → Daily logs, quick captures, braindumps
01-projects/       → Active project notes & decision records
02-areas/          → Ongoing responsibility areas (code quality, architecture)
03-resources/      → Reference knowledge (debugging notes, TILs, patterns)
04-archive/        → Completed or inactive material
templates/         → Note templates (used by /brain and Obsidian)
examples/          → Sample notes demonstrating each format
```

Your notes in the PARA folders are gitignored — this repo only tracks the structure, templates, and examples.

## Customization

### Tags

The default taxonomy includes: `#debugging`, `#decision`, `#til`, `#pattern`, `#claude-code`

Add your own:
- **Project tags**: `#project/my-app`, `#project/api-v2`
- **Tech tags**: `#react`, `#python`, `#aws`
- **Role tags**: `#pm`, `#design`, `#frontend`, `#backend`

### Templates

Edit files in `templates/` to match your preferred note format. The `/brain` skill reads these on demand, so changes take effect immediately.

### Areas

Create notes in `02-areas/` for things you're responsible for: code quality, developer experience, security, on-call, hiring — whatever matters to you.

## Obsidian Tips

- **Graph View** (`Ctrl+G`) — visualize connections between notes via `[[wikilinks]]`
- **Search** — find notes by tag (e.g., `tag:#debugging`)
- **Daily Note** — configure Obsidian's Daily Note plugin to use `00-inbox/` with format `YYYY-MM-DD`
- **Backlinks** — see what links to the current note

## License

MIT
