---
tags:
  - project/dx
status: active
repo: "dx-claude-code"
created: "2026-02-19"
updated: "2026-02-19"
---

# DX Claude Code

## Overview

A collection of Claude Code plugins and skills that enhance developer experience across projects. Provides reusable AI-assisted workflows for code review, Jira integration, GitLab workflows, and project-specific tooling.

## Links

- **Repository**: dx-claude-code (GitLab)

## Plugins & Skills Inventory

- **code-reviewer** — automated MR/PR code reviews with actionable findings
- **jira-epic-manager** — create and manage Jira epics/stories from markdown
- **jira-gitlab-workflow** — branch naming, commit messages, MR conventions
- **epic-orchestrator** — parallel story implementation with agent teams and git worktrees
- **ciranet-design-system** — design system enforcement for Ciranet

## Architecture

- Each plugin lives in its own directory with a `CLAUDE.md` that defines its behavior
- Skills are invoked via `/skill-name` slash commands in Claude Code
- Plugins can reference each other (e.g., epic-orchestrator uses jira-epic-manager)

## Key Patterns

- CLAUDE.md as the plugin definition format
- Markdown-based configuration (no custom runtime)
- Skills compose together for complex workflows
- Agent Teams for parallelizing work across worktrees

## Key Decisions

_Link to decision records as they're created._

## Current Status

_Active development — new plugins and skills added regularly._

## Related Notes

- [[ciranet-design-system]]
- [[ciranet-resident-portal]]
- [[dx-dev-setup]]
