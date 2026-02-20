---
tags:
  - decision
  - backend
project: "my-app"
status: accepted
date: "2026-01-10"
---

# Decision: Use PostgreSQL Instead of MongoDB for User Data

## Context

We need a database for the user management service. The data model includes users, roles, permissions, and audit logs. There are strong relationships between entities (users have roles, roles have permissions).

Current team has experience with both PostgreSQL and MongoDB. Expected scale is ~50K users initially, growing to ~500K over 2 years.

## Options Considered

1. **MongoDB** — Document store, flexible schema, team has some experience. Would require manual joins for relational queries. Good for rapid prototyping.

2. **PostgreSQL** — Relational, strong ACID guarantees, excellent for structured data with relationships. Mature tooling (migrations, ORMs). Team has deeper experience here.

3. **DynamoDB** — Managed, scales automatically. But requires careful key design upfront and is harder to query ad-hoc. Overkill for our scale.

## Decision

**PostgreSQL** — the data is inherently relational (users → roles → permissions), and we need transactional guarantees for permission changes. The team is more productive with SQL. At our scale, PostgreSQL handles the load easily.

Using TypeORM for migrations and query building.

## Consequences

- Need to manage database migrations in CI/CD pipeline
- Schema changes require migration scripts (no schemaless flexibility)
- Get strong data integrity guarantees and easy reporting queries
- Hosting on managed PostgreSQL (AWS RDS) to reduce ops burden

## Related

- [[api-patterns]]
- [[architecture]]
