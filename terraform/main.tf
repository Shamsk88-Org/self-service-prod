terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-app-001"
    storage_account_name = "proddevops2025"
    container_name       = "production"
    key                  = "prodtfstate.tfstate"
    tenant_id            = var.tenant_id
    subscription_id      = var.subscription_id
  }
}

resource "azurerm_resource_group" "test" {
  name     = var.resource_name
  location = var.location
}
