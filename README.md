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
- Frontend: Next.js App Router, React Compiler, TypeScript, ky.
- Backend: Java 21, Spring Boot MVC, PostgreSQL schema, Flyway migration.
- CI: FE lint/build, BE Gradle test.
