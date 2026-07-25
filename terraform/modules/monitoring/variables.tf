variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
}

variable "application_insights_name" {
  description = "Name of Application Insights"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "retention_in_days" {
  description = "Log retention period in days"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Tags applied to monitoring resources"
  type        = map(string)
  default     = {}
}
