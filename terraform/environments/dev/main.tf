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
