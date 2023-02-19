provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

resource "azurerm_resource_group" "this" {
  name     = "test-rg"
  location = "West Europe"
}

data "azurerm_client_config" "current" {}
