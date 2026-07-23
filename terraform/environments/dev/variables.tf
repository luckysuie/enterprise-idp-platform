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
