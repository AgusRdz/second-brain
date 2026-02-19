---
tags:
  - debugging
  - pattern
updated: "2026-02-19"
---

# Debugging Playbook

Systematic approach to debugging issues across projects.

## First Steps (always)

1. **Reproduce** — can you trigger the bug reliably?
2. **Isolate** — what's the smallest case that shows the issue?
3. **Check recent changes** — `git log --oneline -20`, did something just change?
4. **Read the error** — full stack trace, not just the first line

## Angular-Specific

### Component Not Rendering
- Check route configuration and lazy loading
- Check `*ngIf` / `@if` conditions
- Check OnPush + change detection (is data immutable?)

### RxJS Issues
- Subscription leak? Check `takeUntilDestroyed()` or `async` pipe
- Race condition? Check `switchMap` vs `concatMap` vs `mergeMap`
- Stale data? Check BehaviorSubject initial value

### Build/Compilation
- Nx cache stale? `nx reset`
- Circular dependency? Check barrel exports
- Type mismatch? Check shared library versions

## API-Related

### Request Fails
- Check network tab: is the request actually sent?
- Check CORS headers
- Check auth token expiry
- Compare request payload with API spec

### Wrong Data
- Check API response in network tab (not just what the UI shows)
- Check data transformation/mapping layer
- Check pagination params

## Debugging Notes Index

_Auto-populated as debugging notes are captured in `03-resources/debugging/`._

## Related

- [[code-quality]]
- [[angular-patterns]]
- [[api-patterns]]
