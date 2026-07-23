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
