---
tags:
  - project/my-app
status: active
repo: "https://github.com/example/my-app"
created: "2025-12-01"
updated: "2026-01-20"
---

# My App

## Overview

Full-stack web application for managing team workflows. Built with React frontend and Node.js/Express backend, deployed on AWS.

## Links

- **Repository**: https://github.com/example/my-app
- **Jira Board**: https://jira.example.com/board/MY-APP
- **Documentation**: https://docs.example.com/my-app

## Tech Stack

- React 19 + TypeScript
- Node.js + Express
- PostgreSQL (AWS RDS)
- Redis for caching
- Docker + GitHub Actions CI

## Key Decisions

- [[2026-01-10-postgresql-for-user-data]]
- Using TypeORM for database migrations
- Monorepo with Turborepo

## Current Status

Permissions API complete. Starting integration tests. Waiting on staging Redis provisioning (OPS-301). On track for v2.4 release next sprint.

## Architecture Notes

Standard three-tier: React SPA → Express API → PostgreSQL. Redis for session caching and rate limiting. API follows REST conventions with OpenAPI spec.

## Related Notes

- [[architecture]]
- [[api-patterns]]
