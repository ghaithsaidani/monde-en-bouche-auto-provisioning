provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "pdl-resource-group"
  location = "northeurope"
}
