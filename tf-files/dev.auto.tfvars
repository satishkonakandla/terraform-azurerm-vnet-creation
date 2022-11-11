environment                           = "dev1"
business_unit                         = "hr"
azurerm_resource_group                = "rg"
Resource_group_location               = "westus"
azurerm_virtual_network               = "vnet1"
azurerm_virtual_network_address_space = ["10.1.0.0/16", ]
azurerm_subnet                        = "subnet1"
azurerm_public_ip_name                = "publicip"
azurerm_network_interface             = "nic"
azurerm_subnet_address_prefix         = ["10.1.0.0/24"]
azurerm_public_ip_allocation_method   = "Static"
azurerm_network_interface_ip_configuration = {
  name                          = "internal"
  private_ip_address_allocation = "Dynamic"
}
