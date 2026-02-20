---
tags:
  - til
  - git
topic: "git"
date: "2026-01-20"
---

# TIL: `git stash push -m` Accepts Pathspecs

You can stash specific files instead of everything in the working tree:

```bash
# Stash only changes in src/auth/
git stash push -m "auth refactor WIP" -- src/auth/

# Stash a single file
git stash push -m "experimental config" -- config/settings.json
```

This is way better than `git stash` when you're working on multiple things and only want to shelve part of your changes.

To restore:

```bash
git stash list          # find the index
git stash pop stash@{0} # apply and remove
```

## Related

- [[git-workflows]]
