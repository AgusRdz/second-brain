---
tags:
  - project/ciranet
status: active
repo: "ciranet monorepo"
created: "2026-02-19"
updated: "2026-02-19"
---

# Ciranet Resident Portal

## Overview

The resident-facing portal within the Ciranet monorepo. Provides homeowners and residents with access to community management features — violations, architectural requests, work orders, payments, and communications.

## Links

- **Repository**: Ciranet monorepo (GitLab)
- **Jira Board**: RES project

## Tech Stack

- Angular (Nx monorepo)
- TypeScript
- RxJS
- Angular Material / custom design system
- .NET backend APIs

## Monorepo Structure

The Ciranet monorepo uses Nx and contains multiple apps and shared libraries:
- **Apps**: Resident portal, management portal, and others
- **Shared packages**: UI components, API clients, utilities, models
- **Build**: Nx affected commands for incremental builds/tests

## Key Patterns

- Smart/dumb component architecture
- Reactive state management with RxJS
- Shared design system components from `@ciranet/ui`
- Feature modules with lazy loading

## Key Decisions

_Link to decision records as they're created._

## Current Status

_Active development — update as focus shifts._

## Related Notes

- [[ciranet-design-system]]
- [[dx-claude-code]]
