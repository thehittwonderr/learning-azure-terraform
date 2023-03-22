#resource "azurerm_lb" "example" {
#  name                = "TestLoadBalancer"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
#  sku                 = "Standard"
#
#  frontend_ip_configuration {
#    name                 = "PublicIPAddress"
#    public_ip_address_id = azurerm_public_ip.my_terraform_public_ip.id
#  }
#}
#
#resource "azurerm_lb_backend_address_pool" "example" {
#  loadbalancer_id = azurerm_lb.example.id
#  name            = "BackEndAddressPool"
#}
#
#resource "azurerm_lb_backend_address_pool_address" "example1" {
#  name                    = "example1"
#  backend_address_pool_id = azurerm_lb_backend_address_pool.example.id
#  virtual_network_id      = azurerm_virtual_network.example.id
#  ip_address              = "10.0.3.4"
#  depends_on              = [azurerm_linux_virtual_machine.example]
#}
#
#resource "azurerm_lb_backend_address_pool_address" "example2" {
#  name                    = "example2"
#  backend_address_pool_id = azurerm_lb_backend_address_pool.example.id
#  virtual_network_id      = azurerm_virtual_network.example.id
#  ip_address              = "10.0.3.5"
#  depends_on              = [azurerm_linux_virtual_machine.example]
#}
#
#
