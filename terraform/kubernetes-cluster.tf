resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "akspart5"
  location            = "australiaeast"
  resource_group_name = azurerm_resource_group.part5.name
  dns_prefix          = "project4dns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}

resource "azurerm_role_assignment" "role_assignment" {
  principal_id                     = azurerm_kubernetes_cluster.cluster.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.container_registry.id
  skip_service_principal_aad_check = true
}

output "kube_config" {
  value     = base64encode(azurerm_kubernetes_cluster.cluster.kube_config_raw)
  sensitive = true
}
