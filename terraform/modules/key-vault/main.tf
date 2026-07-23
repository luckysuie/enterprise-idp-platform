resource "azurerm_key_vault" "this" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id

  sku_name = "standard"

  enable_rbac_authorization       = true
  soft_delete_retention_days      = 7
  purge_protection_enabled        = true
  public_network_access_enabled   = true
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = false
  enabled_for_deployment          = false

  tags = var.tags
}

resource "azurerm_user_assigned_identity" "workload" {
  name                = var.workload_identity_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_role_assignment" "workload_key_vault_secrets_user" {
  scope                = azurerm_key_vault.this.id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_user_assigned_identity.workload.principal_id
}

resource "azurerm_federated_identity_credential" "workload" {
  name                = "${var.workload_identity_name}-federated"
  resource_group_name = var.resource_group_name
  parent_id           = azurerm_user_assigned_identity.workload.id

  audience = [
    "api://AzureADTokenExchange"
  ]

  issuer = var.oidc_issuer_url

  subject = "system:serviceaccount:${var.kubernetes_namespace}:${var.kubernetes_service_account_name}"
}
