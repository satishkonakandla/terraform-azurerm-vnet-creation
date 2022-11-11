locals {
  rg_name     = "${var.business_unit}-${var.environment}-${var.azurerm_resource_group}"
  vnet_name   = "${var.business_unit}-${var.environment}-${var.azurerm_virtual_network}"
  subnet_name = "${var.business_unit}-${var.environment}-${var.azurerm_virtual_network}-${var.azurerm_subnet}"

  # Use-case-2: Common tags to be assigned to all resources
  service_name = "Demo Services"
  owner = "satishkuma6"
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
    #Tag1 = "Terraform-Cloud-Demo1"
    #Tag2 = "Terraform-Cloud-Demo1-Workspace-Locked"
    #Tag3 = "Terraform-Cloud-Demo1-VCS-Demo"
    #Tag4 = "Terraform-Cloud-Demo1-Auto-Apply-Test"
    #Tag5 = "Notifications Testing"
  }
}