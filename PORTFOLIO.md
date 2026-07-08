# CredLeaf

## Role Fit
- Frontend: TypeScript, React, Next.js App Router, pnpm, ky, React Compiler
- Backend: Java 21, Spring Boot MVC, PostgreSQL, Flyway
- Infra: Docker, Docker Compose, Terraform validate, Kubernetes YAML, GitHub Actions, GHCR
- Git Flow: develop default, main retained, policy workflow for branch and PR title rules

## Service
CredLeaf is a credential issuance and verification console for managing verifiable credential requests, issuer status, and audit-ready submission flows.

## Problem Solving
- Replaced ad-hoc frontend package flow with pnpm lockfile and CI cache for deterministic builds.
- Added Docker image publishing to GHCR so application artifacts are reproducible outside local machines.
- Added Terraform and Kubernetes verification in workspace CI without requiring a live cluster.

## Evidence
- App repo: https://github.com/credleaf-labs/credleaf-fe
- API repo: https://github.com/credleaf-labs/credleaf-be
- Workspace repo: https://github.com/cyjoon68/credleaf-workspace
- CI/CD: frontend/backend CI, Docker build/push, workspace ops verification
