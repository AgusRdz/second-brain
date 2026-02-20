# Second Brain — Obsidian Vault

Engineering knowledge base at `C:\Users\agustin.rodriguez\dev\second-brain\`.

## Vault Structure (PARA)

```
00-inbox/          → Daily logs, quick captures
01-projects/       → Active project notes & decision records
02-areas/          → Ongoing responsibility areas
03-resources/      → Reference knowledge (debugging, TILs, patterns)
04-archive/        → Completed/inactive
templates/         → Note templates (used by /brain skill)
```

## Auto-Capture Rules

Claude should automatically capture noteworthy events without being asked. Use the Write tool with **forward slashes** for all paths.

| Event | Note Type | Path |
|-------|-----------|------|
| Fixed a non-trivial bug | Debugging note | `03-resources/debugging/YYYY-MM-DD-<slug>.md` |
| Made a technical decision | Decision record | `01-projects/decisions/YYYY-MM-DD-<slug>.md` |
| Discovered a pattern or gotcha | TIL | `03-resources/til/YYYY-MM-DD-<slug>.md` |
| Significant work session | Update project note | `01-projects/<project>.md` |

For note formats, use `/brain` or read `templates/<type>.md`.

## Tag Taxonomy

`#debugging`, `#decision`, `#til`, `#pattern`, `#project/ciranet`, `#project/dx`, `#angular`, `#dotnet`, `#git`, `#claude-code`

## Writing Notes

- Always include `tags`, `date`, `project` frontmatter
- Be concrete — file paths, code snippets, error messages
- Cross-link with `[[wikilinks]]`
- One insight per note (atomic)
- Write in one shot — no read-then-write for new files
- Prefer updating an existing note over creating a near-duplicate
