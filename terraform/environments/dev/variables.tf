variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Azure region used for the development environment"
  type        = string
  default     = "Central India"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used in resource naming"
  type        = string
  default     = "enterprise-idp"
}

variable "resource_group_name" {
  description = "Name of the development resource group"
  type        = string
  default     = "enterprise-idp-dev-rg"
}

variable "tags" {
  description = "Common tags applied to Azure resources"
  type        = map(string)

  default = {
    Project     = "Enterprise-IDP"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}


variable "vnet_name" {
  description = "Name of the development Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the development Virtual Network"
  type        = list(string)
}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
}

variable "aks_subnet_address_prefixes" {
  description = "Address prefixes for the AKS subnet"
  type        = list(string)
}

variable "app_subnet_name" {
  description = "Name of the application subnet"
  type        = string
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the application subnet"
  type        = list(string)
}

variable "private_endpoint_subnet_name" {
  description = "Name of the private endpoint subnet"
  type        = string
}

variable "private_endpoint_subnet_address_prefixes" {
  description = "Address prefixes for the private endpoint subnet"
  type        = list(string)
}



variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "aks_node_vm_size" {
  description = "VM size for AKS nodes"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "aks_min_node_count" {
  description = "Minimum number of AKS nodes"
  type        = number
  default     = 1
}

variable "aks_max_node_count" {
  description = "Maximum number of AKS nodes"
  type        = number
  default     = 3
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "acr_sku" {
  description = "Azure Container Registry SKU"
  type        = string
  default     = "Basic"
}

variable "key_vault_name" {
  description = "Azure Key Vault name"
  type        = string
}

variable "workload_identity_name" {
  description = "Workload user-assigned managed identity name"
  type        = string
}

variable "kubernetes_namespace" {
  description = "Kubernetes namespace for the platform workload"
  type        = string
  default     = "platform"
}

variable "kubernetes_service_account_name" {
  description = "Kubernetes service account for Workload Identity"
  type        = string
  default     = "platform-workload"
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
}

variable "application_insights_name" {
  description = "Name of Application Insights"
  type        = string
}

variable "log_retention_in_days" {
  description = "Log retention period in days"
  type        = number
  default     = 30
}


variable "azure_monitor_workspace_name" {
  type = string
}

