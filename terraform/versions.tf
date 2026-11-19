terraform {
  required_version = ">= 1.10, < 2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# No provider credentials or AWS resources are provisioned in Phase 3.
# Provider configuration and remote state are introduced with approved infrastructure design.
