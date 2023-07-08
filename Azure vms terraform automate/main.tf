module "virtual_machine" {
  source               = "./virtual_machine"
  location             = var.location
  vm_name = var.vm_name
  resource_group_name  = var.resource_group_name
  vm_configurations    = var.vm_configurations
}
