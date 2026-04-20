# Second Brain — Obsidian Vault

Engineering knowledge base. Vault root = this file's directory.

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

Claude should automatically capture noteworthy events without being asked. Use the Write tool with **forward slashes** for all paths (relative to vault root).

| Event | Note Type | Path |
|-------|-----------|------|
| Fixed a non-trivial bug | Debugging note | `03-resources/debugging/YYYY-MM-DD-<slug>.md` |
| Made a technical decision | Decision record | `01-projects/decisions/YYYY-MM-DD-<slug>.md` |
| Discovered a pattern or gotcha | TIL | `03-resources/til/YYYY-MM-DD-<slug>.md` |
| Crafted/refined a reusable AI prompt | Prompt (ask first) | `03-resources/prompts/YYYY-MM-DD-<slug>.md` |
| Starting a multi-step implementation task | Plan (ask first) | `01-projects/plans/YYYY-MM-DD-<slug>.md` |
| Significant work session | Update project note | `01-projects/<project>.md` |

### Plan Auto-Detection

Unlike other auto-captures, **always ask before saving a plan**. Detect when:
- A multi-step implementation task is being discussed
- User is about to start something that could span sessions

When detected, ask: *"Want me to save this as a plan so we can resume it later?"*
If yes, use `/brain plan` or write directly with the `templates/plan.md` format.
After each session milestone, offer to update the **Resume Here** field.

### Prompt Auto-Detection

Unlike other auto-captures, **always ask before saving a prompt**. Detect when:
- User iterated on a prompt 2+ times (refining wording)
- Prompt contains variables/placeholders (`[X]`, `{context}`, etc.)
- User created variants for different contexts
- User expressed satisfaction ("this works", "save this", "good prompt")

When detected, ask: *"That prompt looks reusable — want me to save it to your prompts library?"*
If yes, use `/brain prompt` or write directly with the `templates/prompt.md` format.

For note formats, use `/brain` or read `templates/<type>.md`.

## Tag Taxonomy

`#debugging`, `#decision`, `#til`, `#pattern`, `#claude-code`, `#plan`

Add your own `#project/<name>` tags as needed (e.g., `#project/my-app`).
Role tags: `#pm`, `#design`, `#frontend`, `#backend`

## Writing Notes

- Always include `tags`, `date`, `project` frontmatter
- Be concrete — file paths, code snippets, error messages
- Cross-link with `[[wikilinks]]`
- One insight per note (atomic)
- Write in one shot — no read-then-write for new files
- Prefer updating an existing note over creating a near-duplicate
