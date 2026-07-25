terraform {
  backend "azurerm" {
    resource_group_name  = "idp-tfstate-rg"
    storage_account_name = "idptfstate995756"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
    use_azuread_auth     = true
  }
}
