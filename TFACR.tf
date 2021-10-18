
data "azurerm_resource_group" "resource"{
    name = "Srija"
}
resource "azurerm_container_registry" "acr" {
  name                     = "srijaACR"
  resource_group_name      = "${data.azurerm_resource_group.resource.name}"
  location                 = "${data.azurerm_resource_group.resource.location}"
  sku                      = "Premium"
  admin_enabled            = false
  georeplications = [
    {
      location                = "westeurope"
      zone_redundancy_enabled = true
      tags = {}
  }]
 
}