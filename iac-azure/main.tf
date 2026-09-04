resource "azurerm_resource_group" "resource_group" {
  name     = "mario-hm-rg"
  location = "West Europe"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Iac = "True"
  }
}


resource "azurerm_virtual_network" "vnet" {
  name                = "mario-hm-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name

  tags = {
    Iac = "True"
  }
}
