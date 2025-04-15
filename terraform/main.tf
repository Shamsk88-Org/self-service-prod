terraform {
  backend "azurerm" {
    resource_group_name  = var.resource_group_name
    storage_account_name = var.storage_account_name
    container_name       = var.container_name
    key                  = var.key
    tenant_id            = var.tenant_id
    subscription_id      = var.subscription_id
  }
}

resource "azurerm_resource_group" "test" {
  name     = var.resource_name
  location = var.location
}
