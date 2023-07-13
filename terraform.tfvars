vm_configurations = [
  {
    name                  = "vm1"
    location              = "East US"
    resource_group_name   = "my-resource-group"
    count                 = 2
    network_interface_id  = "/subscriptions/subscription-id/resourceGroups/my-resource-group/providers/Microsoft.Network/networkInterfaces/nic1"
    vm_size               = "Standard_DS2_v2"
    managed_disk_type     = "Standard_LRS"
    os_disk_size          = 128
    os_publisher          = "Canonical"
    os_offer              = "UbuntuServer"
    os_sku                = "18.04-LTS"
    os_version            = "latest"
    extra_disk_sizes      = [50, 100]
    storage_account_type  = "BlobStorage"
  },
  {
    name                  = "vm2"
    location              = "West US"
    resource_group_name   = "my-resource-group"
    count                 = 4
    network_interface_id  = "/subscriptions/subscription-id/resourceGroups/my-resource-group/providers/Microsoft.Network/networkInterfaces/nic2"
    vm_size               = "Standard_DS2_v2"
    managed_disk_type     = "Standard_LRS"
    os_disk_size          = 128
    os_publisher          = "Canonical"
    os_offer              = "UbuntuServer"
    os_sku                = "20.04-LTS"
    os_version            = "latest"
    extra_disk_sizes      = null
    storage_account_type  = "QueueStorage"
  }
]

storage_account_name         = "name"
location                     = "East US"
resource_group_name          = "my-resource-group"
storage_account_tier         = "Standard"
storage_account_replication  = "LRS"
