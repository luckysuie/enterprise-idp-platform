variable "acr_name" {
  description = "Globally unique name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the registry"
  type        = string
}

variable "location" {
  description = "Azure region for the registry"
  type        = string
}

variable "sku" {
  description = "Azure Container Registry SKU"
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.sku)
    error_message = "ACR SKU must be Basic, Standard, or Premium."
  }
}

variable "admin_enabled" {
  description = "Whether the ACR local admin account is enabled"
  type        = bool
  default     = false
}

variable "aks_kubelet_identity_object_id" {
  description = "Object ID of the AKS kubelet managed identity"
  type        = string
}

variable "tags" {
  description = "Tags applied to ACR resources"
  type        = map(string)
  default     = {}
}
