# CloudOps Action Hub — Infrastructure Repository

**Owner: Hafiz (`HafizMohammadSunasara`)**. Private repo target `cloudops-action-hub-infra`.

Terraform foundation only; `terraform/` pins major Terraform/provider versions and declares the intended AWS provider. **No AWS resources will be created by this Phase 3 repository**. Infrastructure provisioning, backend state/locking, least-privilege CI role trust and budget alarms will be implemented and reviewed before the first deployment.

## Design decisions pending Phase 4/5

- Confirm launch hosting (Phase 2 recommended AWS ECS/Fargate pilot; GitOps/Kubernetes not mandatory).
- Determine AWS region, organization/billing account, per-environment account and network boundaries.
- Choose remote Terraform state with S3 versioning, encryption, access control and state locking.
- Set up GitHub OIDC role instead of long-lived AWS access keys.
- Validate cost estimate and plan with budget alarms before `terraform apply`.

Never use shared credentials or paste AWS access keys into Terraform variables, state or GitHub commits. `terraform init` / `terraform validate` may be used after installing Terraform, but no `apply` for Phase 3.
