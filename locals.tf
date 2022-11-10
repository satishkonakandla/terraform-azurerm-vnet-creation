locals {
  rg_name = "${var.business_unit}-${var.environment}-${var.azurerm_resource_group}"
  vnet_name = "${var.business_unit}-${var.environment}-${var.azurerm_virtual_network}"
  subnet_name = "${var.business_unit}-${var.environment}-${var.azurerm_virtual_network}-${var.azurerm_subnet }"
}