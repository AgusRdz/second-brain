---
tags:
  - pattern
  - angular
updated: "2026-02-19"
---

# Angular Patterns

Reference for Angular patterns used across Ciranet projects.

## Component Patterns

### Smart/Dumb Components
- **Smart (container)**: injects services, manages state, passes data down
- **Dumb (presentational)**: `@Input`/`@Output` only, no service injection, pure rendering

### OnPush Change Detection
- Use `ChangeDetectionStrategy.OnPush` for presentational components
- Rely on immutable data and `async` pipe for reactivity

## RxJS Patterns

### Unsubscribe Strategies
- `takeUntilDestroyed()` (Angular 16+) — preferred
- `async` pipe in templates — auto-unsubscribes
- `DestroyRef` injection for imperative cleanup

### State Management
- BehaviorSubject for local component state
- Signals (Angular 17+) as modern alternative
- NgRx or lightweight stores for shared state

## Module Patterns

### Lazy-Loaded Feature Modules
- One feature module per route
- Shared module for cross-feature components
- Core module for singleton services

## Related

- [[ciranet-resident-portal]]
- [[architecture]]
