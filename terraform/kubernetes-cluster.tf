resource "azurerm_kubernetes_cluster" "aks" {
  name                = "AKSpart5"
  location            = "australiaeast"
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "project4dns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}
