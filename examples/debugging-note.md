---
tags:
  - debugging
  - frontend
project: "my-app"
date: "2026-01-15"
---

# CORS Errors on API Calls After Deploying to Staging

## Problem

After deploying `v2.3.0` to the staging environment, all API calls from the frontend started failing with:

```
Access to XMLHttpRequest at 'https://api.staging.example.com/users'
from origin 'https://staging.example.com' has been blocked by CORS policy:
No 'Access-Control-Allow-Origin' header is present on the requested resource.
```

Only affected staging — local dev worked fine.

## Root Cause

The backend CORS configuration used an environment variable `ALLOWED_ORIGINS` that was set correctly in production and local `.env`, but was missing from the staging deployment config (`docker-compose.staging.yml`).

Without the variable, the CORS middleware defaulted to allowing no origins.

Found it by comparing `docker-compose.staging.yml` with `docker-compose.production.yml`:

```yaml
# staging was missing this:
environment:
  - ALLOWED_ORIGINS=https://staging.example.com
```

## Solution

```yaml
# docker-compose.staging.yml
services:
  api:
    environment:
      - ALLOWED_ORIGINS=https://staging.example.com
```

Also added a startup log warning when `ALLOWED_ORIGINS` is empty:

```typescript
if (!process.env.ALLOWED_ORIGINS) {
  logger.warn('ALLOWED_ORIGINS is not set — CORS will block all cross-origin requests');
}
```

## Lessons Learned

- Always diff environment configs across all deploy targets when adding new env vars
- Add startup warnings for critical config that has no safe default
- CORS errors that only appear in one environment are almost always missing config

## Related

- [[api-patterns]]
- [[deploy-checklist]]
