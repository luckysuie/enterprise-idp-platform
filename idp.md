### Project Name: Azure Enterprise Internal Developer Platform (IDP)

#### Subtitle: A Self-Service Developer Platform using Backstage, Azure, AKS, Terraform and GitHub Actions
- This project alone can help you answer almost every Platform Engineering interview question.
- Business Scenario
- Imagine you're working for a fintech company.

- The company has:
    - 60 developers
    - 25 microservices
    - Azure Cloud
    - Kubernetes
    - Terraform
    - Azure DevOps
    - GitHub

- Current problems:
    - Developers raise tickets to create infrastructure.
    - DevOps manually provisions Azure resources.
    - Every team writes different pipelines.
    - Monitoring isn't standardized.
    - Documentation is scattered.
    - Secret management is inconsistent.

- Management wants a centralized Internal Developer Platform.
- Your job is to build it. This immediately sounds like a real enterprise project.

## Project Roadmap

### Phase 1 – Project Foundation

#### Objectives
- Project planning
- GitHub repository creation
- Local development environment setup
- Azure authentication
- Naming conventions and standards

#### Deliverables
- Project repository
- Folder structure
- Development tools installed
- Azure CLI authenticated
- Standardized naming convention

---

### Phase 2 – Terraform Foundation

#### Objectives
- Install and configure Terraform
- Configure Terraform backend
- Create remote state storage
- Configure Azure Provider
- Deploy Resource Group

#### Deliverables
- Storage Account for state
- Blob Container
- Backend configuration
- Provider configuration
- Resource Group deployed using Terraform

---

### Phase 3 – Azure Networking

#### Objectives
- Create Virtual Network
- Create Subnets
- Configure Network Security Groups
- Configure Private Endpoints

#### Deliverables
- Virtual Network
- Multiple Subnets
- NSG rules
- Private networking foundation

---

### Phase 4 – AKS Platform

#### Objectives
- Deploy Azure Kubernetes Service (AKS)
- Configure kubectl
- Create Namespaces
- Install Ingress Controller

#### Deliverables
- AKS Cluster
- kubectl connectivity
- Kubernetes namespaces
- NGINX Ingress Controller

---

### Phase 5 – Azure Container Registry (ACR)

#### Objectives
- Deploy Azure Container Registry
- Integrate ACR with AKS

#### Deliverables
- Azure Container Registry
- AKS authentication with ACR
- Container image pull validation

---

### Phase 6 – GitHub Actions

#### Objectives
- Build Continuous Integration (CI) pipeline
- Docker image build
- Push Docker images to ACR

#### Deliverables
- GitHub Actions workflow
- Automated Docker build
- Image publishing to Azure Container Registry

---

### Phase 7 – Azure DevOps

#### Objectives
- Create Release Pipeline
- Configure Variable Groups
- Configure Environments
- Configure Approval Gates

#### Deliverables
- Azure DevOps Release Pipeline
- Variable Groups
- Environment-based deployments
- Manual approval workflow

---

### Phase 8 – Backstage

#### Objectives
- Install Backstage
- Configure Software Catalog
- Configure Templates
- Configure TechDocs

#### Deliverables
- Backstage Portal
- Software Catalog
- Developer Templates
- Documentation Portal

---

### Phase 9 – Self-Service Platform

#### Objectives
- Create Scaffolder Templates
- Automate Repository Creation
- Build Deployment Templates

#### Deliverables
- Self-service project creation
- Automated GitHub repositories
- Standard deployment templates

---

### Phase 10 – Security

#### Objectives
- Configure Azure Key Vault
- Configure Managed Identity
- Integrate Microsoft Entra ID
- Implement Role-Based Access Control (RBAC)

#### Deliverables
- Secure secret management
- Passwordless authentication
- Identity integration
- Fine-grained access control

---

### Phase 11 – Monitoring

#### Objectives
- Configure Azure Monitor
- Deploy Prometheus
- Deploy Grafana
- Configure Log Analytics

#### Deliverables
- Centralized monitoring
- Metrics collection
- Dashboards
- Log aggregation

---

### Phase 12 – Production Readiness

#### Objectives
- Multi-environment strategy
- Backup and disaster recovery considerations
- High availability architecture
- Cost optimization
- Project documentation
- Interview preparation

#### Deliverables
- Production-ready architecture
- Environment strategy
- Backup recommendations
- High availability design
- Complete project documentation
- Interview-ready implementation

---
