### Provider block ###
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
  use_msi = true
  tenant_id = var.tenant_id
  subscription_id = var.subscription_id
}
