terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id = "1ac098dd-90b5-4054-80e7-8baf99b04f64"
  tenant_id = "648b628e-c17f-4d43-8193-72e3f4d7499d"
  subscription_id = "24143a81-fcba-4b21-9b28-c910b75e6580"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-app-001"
    storage_account_name = "proddevops2025"
    container_name       = "production"
    key                  = "prodtfstate.tfstate"
    tenant_id            = "648b628e-c17f-4d43-8193-72e3f4d7499d"
    subscription_id      = "24143a81-fcba-4b21-9b28-c910b75e6580"
  }
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dev-app-006"
  location = "North Europe"
}
