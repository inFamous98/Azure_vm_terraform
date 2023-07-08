variable "location" {
  description = "Location of the Azure resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "network_interface_ids" {
  description = "List of network interface IDs"
  type        = list(string)
  default = []
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default = ""
}

variable "vm_configurations" {
  description = "List of virtual machine configurations"
  type        = list(object({
    name                 = string
    vm_size              = string
    os_disk_size         = number
    os_publisher         = string
    os_offer             = string
    os_sku               = string
    os_version           = string
    count                = number
    network_interface_id = string
    extra_disk_sizes     = list(number) 
  }))
  default = []
}
