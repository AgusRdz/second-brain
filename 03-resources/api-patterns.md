---
tags:
  - pattern
  - dotnet
updated: "2026-02-19"
---

# API Patterns

Reference for API client and backend patterns.

## Frontend API Client Pattern

```typescript
@Injectable({ providedIn: 'root' })
export class ViolationsApiService {
  private readonly http = inject(HttpClient);
  private readonly baseUrl = inject(API_BASE_URL);

  getViolations(params: ViolationQuery): Observable<PagedResult<Violation>> {
    return this.http.get<PagedResult<Violation>>(
      `${this.baseUrl}/violations`,
      { params: toHttpParams(params) }
    );
  }
}
```

## Error Handling

- Use HTTP interceptors for global error handling (auth, 500s)
- Use `catchError` in service methods for endpoint-specific errors
- Show user-facing error messages via a toast/notification service

## Pagination

- Backend returns `PagedResult<T>` with `items`, `totalCount`, `page`, `pageSize`
- Frontend uses `PageEvent` from Material paginator

## Auth

- JWT token in `Authorization: Bearer <token>` header
- HTTP interceptor attaches token automatically
- Refresh token flow handled by interceptor on 401

## Related

- [[ciranet-resident-portal]]
- [[angular-patterns]]
- [[debugging-playbook]]
