resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "EUS-containers"
}

#module "new_network" {
#  source = "/Users/javier/terraform/modules"
#
#  resource_group_location = "eastus2"
#  resource_group_name     = "test-rg"
#  nsg_name                = "test-nsg"
#  vnet_name               = "testing"
#  cidr                    = ["192.168.0.0/16"]
#  sn01                    = "192.168.1.0/24"
#  sn02                    = "192.168.2.0/24"
#  sn03                    = "192.168.3.0/24"
#  env-tag                 = "test"
#
#}
