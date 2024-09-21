resource "azurerm_container_registry" "acr" {
  name                = "CRpart5"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "australiaeast"
  sku                 = "Standard"
  admin_enabled       = true
}
