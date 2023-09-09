## Create (and display) an SSH key
#resource "tls_private_key" "example_ssh" {
#  algorithm = "RSA"
#  rsa_bits  = 4096
#}
#
resource "azurerm_key_vault_secret" "privatekey" {
  name         = "private-key"
  value        = tls_private_key.example_ssh.private_key_pem
  key_vault_id = azurerm_key_vault.example.id

 depends_on = [azurerm_key_vault.example]
}
#
## Create public IPs
#resource "azurerm_public_ip" "my_terraform_public_ip" {
#  name                = "myPublicIP"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
#  allocation_method   = "Static"
#  sku                 = "Standard"
#}
#
#resource "azurerm_network_interface" "example" {
#  count               = 2
#  name                = "example-nic${count.index}"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
#
#  ip_configuration {
#    name                          = "internal"
#    subnet_id                     = azurerm_virtual_network.example.subnet.*.id[2]
#    private_ip_address_allocation = "Dynamic"
#  }
#}
#
#resource "azurerm_linux_virtual_machine" "example" {
#  count               = 2
#  name                = "example-machine${count.index}"
#  resource_group_name = azurerm_resource_group.rg.name
#  location            = azurerm_resource_group.rg.location
#  size                = "Standard_DS1_v2"
#  admin_username      = "adminuser"
#  network_interface_ids = [
#    element(azurerm_network_interface.example.*.id, count.index)
#  ]
#
#  admin_ssh_key {
#    username   = "adminuser"
#    public_key = tls_private_key.example_ssh.public_key_openssh
#  }
#
#  os_disk {
#    caching              = "ReadWrite"
#    storage_account_type = "Standard_LRS"
#  }
#
#  source_image_reference {
#    publisher = "Canonical"
#    offer     = "UbuntuServer"
#    sku       = "16.04-LTS"
#    version   = "latest"
#  }
#}
