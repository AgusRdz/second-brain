---
tags:
  - pattern
  - backend
area: "code-quality"
updated: "2026-01-18"
---

# Code Quality

Ongoing practices and standards for maintaining code quality across projects.

## Testing Standards

- Unit test coverage target: 80% for business logic
- Integration tests for all API endpoints
- E2E tests for critical user flows only (login, checkout, etc.)
- Use factories/fixtures, not raw test data

## Code Review Checklist

- [ ] No `any` types in TypeScript (use `unknown` + type guards)
- [ ] Error handling covers failure modes
- [ ] Database queries use parameterized inputs
- [ ] New endpoints have OpenAPI docs
- [ ] Migrations are reversible

## Linting & Formatting

- ESLint + Prettier for frontend
- Husky pre-commit hooks enforce formatting
- CI fails on lint errors (no warnings-as-errors bypass)

## Monitoring

- Structured JSON logging (pino)
- Error tracking via Sentry
- API latency dashboards in Grafana

## Related

- [[developer-experience]]
- [[architecture]]
