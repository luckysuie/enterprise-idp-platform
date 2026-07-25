variable "azure_monitor_workspace_name" {
  description = "Azure Monitor Workspace name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
