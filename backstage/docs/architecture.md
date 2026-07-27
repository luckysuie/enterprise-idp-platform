# Platform Architecture

## High-Level Architecture

The Enterprise Internal Developer Platform uses Backstage as the central developer portal.

Developers use Backstage to access:

- Software Catalog
- Technical documentation
- Software templates
- CI/CD workflows
- Kubernetes resources
- Azure infrastructure information

## Architecture Flow

```text
Developers
    |
    v
Backstage Developer Portal
    |
    +-- GitHub
    +-- Azure DevOps
    +-- Terraform
    +-- Azure Kubernetes Service
    +-- Azure Container Registry
    +-- Azure Key Vault
    +-- Azure Monitor
