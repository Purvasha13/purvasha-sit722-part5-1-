resource "azurerm_container_registry" "container_registry" {
  name                = "crpurva5"
  resource_group_name = azurerm_resource_group.purva5.name
  location            = "australiaeast"
  sku                 = "Standard"
  admin_enabled       = true
}

output "registry_name" {
  value = azurerm_container_registry.container_registry.name
}
