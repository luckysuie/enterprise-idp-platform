data "azurerm_client_config" "current" {}

module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source = "../../modules/network"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location

  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space

  aks_subnet_name             = var.aks_subnet_name
  aks_subnet_address_prefixes = var.aks_subnet_address_prefixes

  app_subnet_name             = var.app_subnet_name
  app_subnet_address_prefixes = var.app_subnet_address_prefixes

  private_endpoint_subnet_name             = var.private_endpoint_subnet_name
  private_endpoint_subnet_address_prefixes = var.private_endpoint_subnet_address_prefixes

  tags = var.tags
}


module "aks" {
  source = "../../modules/aks"

  aks_name                   = var.aks_name
  location                   = module.resource_group.resource_group_location
  log_analytics_workspace_id = module.monitoring.log_analytics_workspace_id
  resource_group_name        = module.resource_group.resource_group_name
  dns_prefix                 = var.aks_dns_prefix
  aks_subnet_id              = module.network.aks_subnet_id

  node_vm_size   = var.aks_node_vm_size
  min_node_count = var.aks_min_node_count
  max_node_count = var.aks_max_node_count

  tags = var.tags
}


module "acr" {
  source = "../../modules/acr"

  acr_name                       = var.acr_name
  resource_group_name            = module.resource_group.resource_group_name
  location                       = module.resource_group.resource_group_location
  sku                            = var.acr_sku
  admin_enabled                  = false
  aks_kubelet_identity_object_id = module.aks.kubelet_identity_object_id

  tags = var.tags
}



module "key_vault" {
  source = "../../modules/key-vault"

  key_vault_name      = var.key_vault_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  tenant_id           = data.azurerm_client_config.current.tenant_id
  oidc_issuer_url     = module.aks.oidc_issuer_url

  workload_identity_name          = var.workload_identity_name
  kubernetes_namespace            = var.kubernetes_namespace
  kubernetes_service_account_name = var.kubernetes_service_account_name

  tags = var.tags
}

module "monitoring" {
  source = "../../modules/monitoring"

  log_analytics_workspace_name = var.log_analytics_workspace_name
  application_insights_name    = var.application_insights_name
  resource_group_name          = module.resource_group.resource_group_name
  location                     = module.resource_group.resource_group_location
  retention_in_days            = var.log_retention_in_days

  tags = var.tags
}

module "azure_monitor_workspace" {
  source = "../../modules/azure-monitor-workspace"

  azure_monitor_workspace_name = var.azure_monitor_workspace_name
  resource_group_name          = module.resource_group.resource_group_name
  location                     = module.resource_group.resource_group_location

  tags = var.tags
}
