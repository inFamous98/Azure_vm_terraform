location = "eastus"
resource_group_name = "POC"

vm_configurations = [
  {
    name         = "config-1"
    vm_size      = "Standard_DS2_v2"
    os_disk_size = 150
    os_publisher = "MicrosoftWindowsServer"
    os_offer     = "WindowsServer"
    os_sku       = "2016-Datacenter"
    os_version   = "latest"
    count        = 4
    network_interface_id = "1"
    extra_disk_sizes     = []
  },
  {
    name         = "config-2"
    vm_size      = "Standard_DS3_v2"
    os_disk_size = 100
    os_publisher = "MicrosoftWindowsServer"
    os_offer     = "WindowsServer"
    os_sku       = "2017-Datacenter"
    os_version   = "latest"
    count        = 5
    network_interface_id = "2"
    extra_disk_sizes     = []
  }
]
