output "public_ip" {
  value = concat(azurerm_public_ip.aviatrix_copilot_public_ip.*.ip_address, [null])[0]
}

output "private_ip" {
  value = azurerm_network_interface.aviatrix_copilot_nic.private_ip_address
}

output "resource_group_name" {
  value = var.use_existing_vnet ? var.resource_group_name : azurerm_resource_group.aviatrix_copilot_rg[0].name
}

output "network_security_group_name" {
  value = azurerm_network_security_group.aviatrix_copilot_nsg.name
}

output "copilot_vm" {
  value = var.add_ssh_key ? azurerm_linux_virtual_machine.aviatrix_copilot_vm_ssh[0] : azurerm_linux_virtual_machine.aviatrix_copilot_vm[0]
}