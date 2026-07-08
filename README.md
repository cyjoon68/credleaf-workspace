# CredLeaf

CredLeaf is a credential issuance and verification platform for managing credential templates, issued credentials, public verification, revocation, and audit logs.

```text
credleaf-workspace/
  credleaf-fe/
  credleaf-be/
```

## Services

- `credleaf-fe`: issuer console and public verification UI.
- `credleaf-be`: credential lifecycle API and audit log storage.

## Run

```bash
git submodule update --init --recursive
docker compose up --build
```

## Core Flow

- Create credential templates.
- Issue credentials from templates.
- Verify credential status through a public page.
- Revoke issued credentials.
- Track status changes through audit logs.

## Operations

- Audit logs support cursor pagination through `GET /api/audit-logs?cursor=&limit=`.
- PostgreSQL indexes support audit log ordering and target lookup.
- Docker Compose runs the local stack.
- Terraform, Kubernetes, and Argo CD manifests describe deployment structure.
