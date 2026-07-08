# credleaf-workspace

Root workspace for CredLeaf. Child repos are managed as git submodules.

```text
credleaf-workspace/
  credleaf-fe/
  credleaf-be/
```

## Run

```bash
git submodule update --init --recursive
docker compose up --build
```

## Resume evidence

- DID credential lifecycle: issue, verify, revoke, audit log.
- Audit bottleneck fix: `GET /api/audit-logs?cursor=&limit=` plus `audit_log(created_at desc, id)` and `target_id` indexes.
- Frontend: Next.js App Router, React Compiler, TypeScript, ky.
- Backend: Java 21, Spring Boot MVC, PostgreSQL schema, Flyway migration.
- Infra: Docker Compose, Terraform skeleton, Kubernetes manifest, Argo CD GitOps app.
- CI: FE lint/build, BE Gradle test.
