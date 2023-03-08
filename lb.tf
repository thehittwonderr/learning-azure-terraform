#resource "azurerm_lb" "example" {
#  name                = "TestLoadBalancer"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
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
