resource "azurerm_virtual_machine" "example" {
  count                 = length(var.vm_configurations) > 0 ? sum([for config in var.vm_configurations : config.count]) : 0
  name                  = "${var.vm_configurations[count.index % length(var.vm_configurations)].name}-${count.index}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.vm_configurations[count.index % length(var.vm_configurations)].network_interface_id]
  vm_size               = var.vm_configurations[count.index % length(var.vm_configurations)].vm_size

  storage_os_disk {
    name              = "${var.vm_configurations[count.index % length(var.vm_configurations)].name}-${count.index}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = var.vm_configurations[count.index % length(var.vm_configurations)].os_disk_size
  }

  storage_image_reference {
    publisher = var.vm_configurations[count.index % length(var.vm_configurations)].os_publisher
    offer     = var.vm_configurations[count.index % length(var.vm_configurations)].os_offer
    sku       = var.vm_configurations[count.index % length(var.vm_configurations)].os_sku
    version   = var.vm_configurations[count.index % length(var.vm_configurations)].os_version
  }

  dynamic "storage_data_disk" {
    for_each = var.vm_configurations[count.index % length(var.vm_configurations)].extra_disk_sizes != null ? var.vm_configurations[count.index % length(var.vm_configurations)].extra_disk_sizes : []
    content {
      name              = "${var.vm_configurations[count.index % length(var.vm_configurations)].name}-${count.index}-extradisk-${storage_data_disk.key}"
      create_option     = "Empty"
      managed_disk_type = "Standard_LRS"
      disk_size_gb      = storage_data_disk.value
      lun               = storage_data_disk.key + 1
    }
  }
}