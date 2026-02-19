---
tags:
  - git
  - pattern
updated: "2026-02-19"
---

# Git Workflows

Reference for git conventions and workflows.

## Branch Naming

Format: `<type>/<JIRA-ID>-<short-description>`

Examples:
- `feature/RES-219-resident-violations`
- `fix/RES-342-payment-date-format`
- `chore/DX-15-update-eslint-config`

## Commit Messages (Conventional Commits)

Format: `<type>(<scope>): <description>`

Types: `feat`, `fix`, `chore`, `refactor`, `test`, `docs`, `style`, `perf`, `ci`

Examples:
- `feat(violations): add resident violation detail view`
- `fix(payments): correct date format in payment history`
- `chore(deps): update Angular to v17.1`

## Merge Request Conventions

- Title matches Jira ID: `RES-219: Add resident violation detail view`
- Squash merge to main
- Delete source branch after merge

## Git Worktrees (for parallel work)

```bash
# Create worktree for a story
git worktree add ../project-RES-219 -b feature/RES-219-description

# Clean up after merge
git worktree remove ../project-RES-219
git branch -d feature/RES-219-description
```

## Related

- [[developer-experience]]
- [[dx-claude-code]]
