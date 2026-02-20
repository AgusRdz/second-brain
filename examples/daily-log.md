---
tags:
  - daily
date: "2026-01-20"
---

# 2026-01-20

## Worked On

- Finished the user permissions API — all CRUD endpoints done
- Reviewed PR #142 for the notification service refactor
- Paired with Sarah on the CI pipeline flakiness in the e2e tests

## Blockers

- Waiting on DevOps to provision the staging Redis instance (ticket OPS-301)

## Decisions Made

- Going with role-based access control instead of attribute-based — see [[2026-01-10-postgresql-for-user-data]]

## TIL

- `git stash push -m` can target specific paths — see [[2026-01-20-git-stash-pathspecs]]

## Tomorrow

- Start integration tests for permissions API
- Follow up on Redis provisioning
