variable "key_vault_name" {
  description = "Globally unique Azure Key Vault name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tenant_id" {
  description = "Microsoft Entra tenant ID"
  type        = string
}

variable "oidc_issuer_url" {
  description = "AKS OIDC issuer URL"
  type        = string
}

variable "workload_identity_name" {
  description = "Name of the user-assigned managed identity"
  type        = string
}

variable "kubernetes_namespace" {
  description = "Kubernetes namespace used by the application"
  type        = string
  default     = "platform"
}

variable "kubernetes_service_account_name" {
  description = "Kubernetes service account associated with Workload Identity"
  type        = string
  default     = "platform-workload"
}

variable "tags" {
  description = "Tags applied to resources"
  type        = map(string)
  default     = {}
}
