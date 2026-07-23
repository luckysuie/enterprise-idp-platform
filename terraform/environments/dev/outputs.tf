output "resource_group_name" {
  description = "Name of the development Resource Group"
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "ID of the development Resource Group"
  value       = module.resource_group.resource_group_id
}

output "resource_group_location" {
  description = "Location of the development Resource Group"
  value       = module.resource_group.resource_group_location
}

output "vnet_name" {
  description = "Name of the development Virtual Network"
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "ID of the development Virtual Network"
  value       = module.network.vnet_id
}

output "aks_subnet_id" {
  description = "ID of the AKS subnet"
  value       = module.network.aks_subnet_id
}

output "app_subnet_id" {
  description = "ID of the application subnet"
  value       = module.network.app_subnet_id
}

output "private_endpoint_subnet_id" {
  description = "ID of the private endpoint subnet"
  value       = module.network.private_endpoint_subnet_id
}
