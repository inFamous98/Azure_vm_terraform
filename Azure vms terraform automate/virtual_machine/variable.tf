variable "location" {
  description = "Location of the Azure resources"
  type        = string
  default = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default = "POC"
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

variable "storage_account_type" {
  description = "The type of storage account to be used (Standard_LRS, Premium_LRS, etc)"
  type        = string
  default     = "Standard_LRS"
}

variable "managed_disk_type" {
  description = "The type of managed disk to be used (Standard_LRS, Premium_LRS, etc)"
  type        = string
  default     = "Standard_LRS"
}

variable "storage_account_name" {
  type = string
  default = "name"
}

variable "storage_account_tier" {
  type = string
  default = "Standard"
}

variable "storage_account_replication" {
  type = string
  default = "LRS"
}

variable "vm_configurations" {
  type = list(object({
    name                  = string
    location              = string
    count = number
    resource_group_name   = string
    network_interface_id  = string
    vm_size               = string
    managed_disk_type     = string
    os_disk_size          = number
    os_publisher          = string
    os_offer              = string
    os_sku                = string
    os_version            = string
    extra_disk_sizes      = list(number)
    storage_account_type = string
  }))
}
