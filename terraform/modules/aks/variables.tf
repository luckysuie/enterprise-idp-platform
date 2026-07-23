variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region for the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group containing the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "aks_subnet_id" {
  description = "Subnet ID used by the AKS node pool"
  type        = string
}

variable "node_vm_size" {
  description = "VM size used by AKS nodes"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "min_node_count" {
  description = "Minimum number of nodes"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Maximum number of nodes"
  type        = number
  default     = 3
}

variable "tags" {
  description = "Tags applied to AKS resources"
  type        = map(string)
  default     = {}
}
