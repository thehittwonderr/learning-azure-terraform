output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "private_ip_address" {
  value = tomap({
    for name, vm in azurerm_network_interface.example : name => vm.private_ip_address
  })
}
#  value = azurerm_network_interface.example[count.index].private_ip_address


output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}

output "public_ip_lb" {
  value = azurerm_public_ip.my_terraform_public_ip.ip_address
}
