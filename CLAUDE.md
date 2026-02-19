# Second Brain — Obsidian Vault

This is Agustin's engineering knowledge base. It lives at `C:\Users\agustin.rodriguez\dev\second-brain\`.

## Vault Structure (PARA)

```
00-inbox/          → Daily logs, quick captures
01-projects/       → Active project notes
02-areas/          → Ongoing responsibility areas
03-resources/      → Reference knowledge (patterns, playbooks)
04-archive/        → Completed/inactive
templates/         → Note templates (for reference, not direct use)
```

## Auto-Capture Rules

When working in **any project**, Claude should automatically write to this vault when noteworthy events happen. Use the Write tool with forward slashes for all file paths.

### When to Capture (do this without being asked)

| Event | Note Type | Location |
|-------|-----------|----------|
| Fixed a non-trivial bug | Debugging note | `03-resources/debugging/YYYY-MM-DD-short-slug.md` |
| Made a technical decision (library choice, architecture, pattern) | Decision record | `01-projects/decisions/YYYY-MM-DD-short-slug.md` |
| Discovered a reusable pattern or gotcha | TIL | `03-resources/til/YYYY-MM-DD-short-slug.md` |
| Significant work session on a project | Update project note | `01-projects/<project-name>.md` |

### How to Write Notes

1. **Use frontmatter** — always include `tags`, `date`, `project` fields
2. **Be concrete** — include file paths, code snippets, error messages
3. **Cross-link** — use `[[wikilinks]]` to connect to project notes and related notes
4. **Tag consistently** — use the tag taxonomy below
5. **Keep it atomic** — one insight per TIL, one bug per debugging note
6. **No placeholders** — every field should have real content or be omitted

### Tag Taxonomy

- `#project/ciranet` — Ciranet monorepo work
- `#project/dx` — Developer experience tooling (dx-claude-code, dx-dev-setup)
- `#debugging` — Bug investigations and fixes
- `#decision` — Architecture/design decisions
- `#til` — Today I Learned entries
- `#pattern` — Reusable patterns and conventions
- `#angular` — Angular-specific knowledge
- `#dotnet` — .NET backend knowledge
- `#git` — Git workflows and tips
- `#claude-code` — Claude Code plugin/skill development

### Note Format Reference

#### Debugging Note
```markdown
---
tags: [debugging, project/ciranet]
date: "YYYY-MM-DD"
project: "ciranet-resident-portal"
---
# Short descriptive title

## Problem
What was observed vs expected. Include error messages verbatim.

## Root Cause
What was actually wrong and why.

## Solution
Code or steps that fixed it. Include file paths.

## Lessons Learned
What would help catch this faster next time.

## Related
- [[ciranet-resident-portal]]
```

#### Decision Record
```markdown
---
tags: [decision, project/ciranet]
date: "YYYY-MM-DD"
project: "ciranet-resident-portal"
status: accepted
---
# Decision: Short title

## Context
Why this decision was needed.

## Decision
What was chosen and why.

## Consequences
Trade-offs accepted.

## Related
- [[ciranet-resident-portal]]
```

#### TIL
```markdown
---
tags: [til, angular]
date: "YYYY-MM-DD"
topic: "angular"
---
# TIL: Short insight

What was learned, with a concrete example.

## Related
- [[angular-patterns]]
```

### Token Efficiency

- Don't re-read existing vault notes unless you need to update them
- When creating notes, write them in one shot (no read-then-write for new files)
- Use short, descriptive slugs in filenames
- Prefer updating an existing note over creating a near-duplicate
