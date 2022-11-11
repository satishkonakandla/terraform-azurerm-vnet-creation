# Provider Block
provider "azurerm" {
  features {
  }
}
resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.Resource_group_location
}
# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}



resource "azurerm_virtual_network" "myvnet" {
  name                = local.vnet_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = var.azurerm_virtual_network_address_space
}

resource "azurerm_subnet" "mysubnet" {
  name                 = local.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = var.azurerm_subnet_address_prefix
}

resource "azurerm_public_ip" "mypublicip" {
  name                = var.azurerm_public_ip_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = var.azurerm_public_ip_allocation_method
  domain_name_label   = "app1-vm-${random_string.myrandom.id}"
}

resource "azurerm_network_interface" "mynic" {
  name                = var.azurerm_network_interface
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  ip_configuration {
    name                          = var.azurerm_network_interface_ip_configuration.name
    subnet_id                     = azurerm_subnet.mysubnet.id
    private_ip_address_allocation = var.azurerm_network_interface_ip_configuration.private_ip_address_allocation
    public_ip_address_id          = azurerm_public_ip.mypublicip.id
  }
}
