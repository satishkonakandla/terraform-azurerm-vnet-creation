output "resource_group_name" {
  description = "resourcegroupname"
  value       = azurerm_resource_group.rg.name
}
output "Resource_group_location" {
  description = "resourcegrouplocation"
  value       = azurerm_resource_group.rg.location

}
output "azurerm_virtual_network" {
  description = "vnetname"
  value       = azurerm_virtual_network.myvnet.name
}
output "resourcegroupid" {
  description = "resourcegroupid"
  value       = azurerm_resource_group.rg.id

}
output "subnet_address_prefixes" {
  description = "subnet_name"
  value       = azurerm_subnet.mysubnet.address_prefixes

}
output "public_ip_address" {
  value = azurerm_public_ip.mypublicip.ip_address
}

