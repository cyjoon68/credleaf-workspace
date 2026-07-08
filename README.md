# CredLeaf

CredLeaf는 자격증명 템플릿 생성, 증명 발급, 공개 검증, 폐기, 감사 로그를 관리하는 자격증명 발급·검증 플랫폼입니다.

```text
credleaf-workspace/
  credleaf-fe/
  credleaf-be/
```

## 서비스 구성

- `credleaf-fe`: 발급자 콘솔과 공개 검증 화면
- `credleaf-be`: 자격증명 생명주기 API와 감사 로그 저장소

## 실행

```bash
git submodule update --init --recursive
docker compose up --build
```

## 핵심 흐름

- 자격증명 템플릿 생성
- 템플릿 기반 증명 발급
- 공개 검증 화면에서 증명 상태 확인
- 발급된 증명 폐기
- 상태 변경 이력을 감사 로그로 기록

## 운영 구조

- 감사 로그는 `GET /api/audit-logs?cursor=&limit=` 형태로 cursor pagination을 지원합니다.
- PostgreSQL index로 감사 로그 정렬과 대상 리소스 조회를 보조합니다.
- Docker Compose로 로컬 스택을 실행합니다.
- Terraform, Kubernetes, Argo CD manifest로 배포 구조를 정의합니다.
