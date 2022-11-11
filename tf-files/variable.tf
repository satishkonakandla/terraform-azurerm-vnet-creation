#Bussiness_Unit
variable "business_unit" {
  description = "Business Unit Name"
  type        = string
}
# 2. Environment Name
variable "environment" {
  description = "Environment Name"
  type        = string
 
}
# 3.Resource group name
variable "azurerm_resource_group" {
  description = "resource_group_name"
  type        = string
 }
# 4.Resource_group_location
variable "Resource_group_location" {
  description = "Resource_group_location"
  type        = string
}
# 5.virtual network
variable "azurerm_virtual_network" {
  description = "virtual_network_name"
  type        = string
}

# 6.subnet :when promoted using cli
variable "azurerm_subnet" {
  description = "subnet_name"
  type        = string
}
# 7.virtual network with address space
variable "azurerm_virtual_network_address_space" {
  description = "vnet_address_space"
  type        = list(string)
}

# 8.public ip name
variable "azurerm_public_ip_name" {
  description = "publicipname"
  type        = string
}
# 9.nic name
variable "azurerm_network_interface" {
  description = "nic_name"
  type        = string
}
# 10. subnet_address_prefixes
variable "azurerm_subnet_address_prefix" {
  description = "address_prefixes"
  type        = list(string)
}

# 11.azurerm_public_ip
variable "azurerm_public_ip_allocation_method" {
  description = "public_ip_allocation_method"
  type        = string
}

#12.ip_configuration
variable "azurerm_network_interface_ip_configuration" {
  description = "ip_configuration"
  type = object({
    name                          = string
    private_ip_address_allocation = string
  })
}

