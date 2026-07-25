resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  role_based_access_control_enabled = true
  oidc_issuer_enabled               = true
  workload_identity_enabled         = true

  default_node_pool {
    name                 = "system"
    vm_size              = var.node_vm_size
    vnet_subnet_id       = var.aks_subnet_id
    auto_scaling_enabled = true
    min_count            = var.min_node_count
    max_count            = var.max_node_count
    os_disk_size_gb      = 50
    type                 = "VirtualMachineScaleSets"
  }

  identity {
    type = "SystemAssigned"
  }





  oms_agent {
    log_analytics_workspace_id      = var.log_analytics_workspace_id
    msi_auth_for_monitoring_enabled = true
  }


  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    network_policy      = "azure"

    service_cidr   = "10.20.0.0/16"
    dns_service_ip = "10.20.0.10"
    pod_cidr       = "10.244.0.0/16"

    load_balancer_sku = "standard"
    outbound_type     = "loadBalancer"
  }

  tags = var.tags
}


