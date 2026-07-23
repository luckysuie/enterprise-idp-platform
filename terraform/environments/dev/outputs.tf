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

output "aks_name" {
  description = "Name of the AKS cluster"
  value       = module.aks.aks_name
}

output "aks_id" {
  description = "ID of the AKS cluster"
  value       = module.aks.aks_id
}

output "aks_oidc_issuer_url" {
  description = "OIDC issuer URL of the AKS cluster"
  value       = module.aks.oidc_issuer_url
}

output "aks_kubelet_identity_object_id" {
  description = "Object ID of the AKS kubelet identity"
  value       = module.aks.kubelet_identity_object_id
}

output "acr_name" {
  value = module.acr.acr_name
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}


output "key_vault_name" {
  value = module.key_vault.key_vault_name
}

output "key_vault_uri" {
  value = module.key_vault.key_vault_uri
}

output "workload_identity_client_id" {
  value = module.key_vault.workload_identity_client_id
}
