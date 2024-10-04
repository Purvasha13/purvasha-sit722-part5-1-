resource "azurerm_container_registry" "container_registry" {
  name                = "prjcr"
  resource_group_name = azurerm_resource_group.devops5.name
  location            = "australiaeast"
  sku                 = "Standard"
  admin_enabled       = true
}

output "registry_name" {
  value = azurerm_container_registry.container_registry.name
}
