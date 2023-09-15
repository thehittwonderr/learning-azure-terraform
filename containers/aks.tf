#resource "azurerm_container_registry" "example" {
#  name                = "mytestacrregistry"
#  resource_group_name = azurerm_resource_group.rg.name
#  location            = azurerm_resource_group.rg.location
#  sku                 = "Basic"
#}
#
#resource "azurerm_kubernetes_cluster" "example" {
#  name                = "example-aks1"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
#  dns_prefix          = "exampleaks1"
#
#  default_node_pool {
#    name       = "default"
#    node_count = 1
#    vm_size    = "Standard_D2_v2"
#  }
#
#  identity {
#    type = "SystemAssigned"
#  }
#
#}
#
#resource "azurerm_role_assignment" "example" {
#  principal_id                     = azurerm_kubernetes_cluster.example.identity[0].principal_id
#  role_definition_name             = "AcrPull"
#  scope                            = azurerm_container_registry.example.id
#  skip_service_principal_aad_check = true
#}
