# Authentication & authorisation

## ⚠️ Required before deploying

The API **will not authenticate anyone** until `JWT_SECRET` is set. Every
protected route returns `503` and login refuses to issue a token. This is
deliberate: the alternative — falling back to an unsigned token — is what made
the previous build bypassable.

```bash
# Generate one and set it in Vercel (Project → Settings → Environment Variables)
openssl rand -base64 64
```

The secret is rejected if it is missing, shorter than 16 characters, or left at
the `.env.example` placeholder.

**Deploying this logs everyone out.** Tokens issued by the previous build are
in an unsupported format and are refused; users simply log in again.

### Optional break-glass administrator

Replaces the administrator password that used to be hardcoded in source. Leave
both unset to disable the path entirely.

```bash
ADMIN_BOOTSTRAP_EMAIL=you@unth.edu.ng
ADMIN_BOOTSTRAP_PASSWORD_HASH=$(node -e "console.log(require('bcryptjs').hashSync('YOUR-PASSWORD',10))")
```

> The old password (`blackvelvet`) is still in git history. Treat it as
> compromised and never reuse it.

---

## What was fixed

Each of these was demonstrably exploitable and is now covered by
`npm run test:auth` (33 assertions).

| Issue | Before | Now |
|---|---|---|
| **Token forgery** | Tokens were `usr.<base64(JSON)>` with no signature. Any student could edit `"role":"student"` → `"admin"` in DevTools and re-encode. | HMAC-signed JWTs with issuer and expiry; tampered, foreign-issuer, wrong-secret and expired tokens are all rejected. |
| **Hardcoded backdoor** | `Authorization: Bearer admin-token-<anything>` granted admin with no account. | Removed. |
| **Hardcoded password** | An admin password was committed in `api/index.js`. | Removed; optional env-configured bootstrap instead. |
| **Unauthenticated admin API** | No v1 route checked the caller. `POST /api/admin/users` minted administrators for anonymous requests; `/api/admin/users/:id/reset-password` reset anyone's password. | Central route guard: `/api/admin/*` requires admin to mutate, admin-or-assessor to read. |
| **Account takeover via reset** | `POST /api/auth/forgot-password` reset any account by email and returned the new password to the caller. Also a lockout vector. | Records an audit-logged request only; an administrator issues the temporary password directly. Identical response whether or not the account exists. |
| **Refresh forgery** | Any string was accepted and swapped for a fresh token. | The refresh token must be a valid signature of type `refresh`; access tokens are not accepted. |
| **Verify was a no-op** | `GET /api/auth/verify` returned `valid: true` for any `Bearer` header. | Verifies the signature. |
| **Open demo login** | `POST /api/auth/demo-login` issued an admin session to anyone. | Off unless `ENABLE_DEMO_LOGIN=true`, and admin-only even then. |
| **Open debug endpoints** | `/api/debug-env`, `/api/migrate-rotations` leaked and mutated schema detail. | Admin-only. |

## Route access model

Defined in one place — `routeRequirement()` in [api/index.js](api/index.js) —
rather than in ~90 individual handlers.

| Path | Access |
|---|---|
| `/api/health`, `/api/test`, `/api` | public |
| `/api/auth/login`, `register`, `refresh`, `forgot-password`, `reset-password` | public |
| `/api/admin/**` (GET) | admin, assessor |
| `/api/admin/**` (POST/PUT/PATCH/DELETE) | admin |
| `/api/auth/demo-login`, `/api/cbme/migrate`, `/api/migrate-rotations`, `/api/debug-env`, `/api/db-status` | admin |
| everything else under `/api` | any authenticated user |

CBME handlers additionally enforce their own role checks, so authorisation is
not weakened if a route is ever moved out of the guard's admin list.

---

## Known remaining gaps

Not addressed — flagged so they are not mistaken for solved:

- **No rate limiting on login.** `express-rate-limit` is a dependency but is not
  wired into the serverless entrypoint, so password guessing is unthrottled.
- **No token revocation.** A stolen token stays valid until it expires
  (`ACCESS_TOKEN_TTL`, default 12h). The `refresh_tokens` table exists but is
  unused.
- **No password complexity rules or lockout** on repeated failures.
- **No CSRF defence**, though the token is sent in a header rather than a
  cookie, which limits exposure.
