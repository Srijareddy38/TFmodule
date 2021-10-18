terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id   = "1aa15b65-63bd-44a0-a37c-85e54dcc0638"
  tenant_id         = "af51c647-8b40-4e4d-afd3-0b9f5f5f1b16"
  client_id         = "212b63fd-16f5-4224-86a2-31daff9a5175"
  client_secret     = "Usb7Q~lBekAX433~cKMzJxRvyytMvc.oWWmEv"
}
resource "azurerm_resource_group" "newresource"{
    name = "saisrija"
    location = "eastus"
}

module "ACR" {
  source = "C:/Users/bhara/Documents/Srija/DevOps/TFmodule"

  depends_on = [azurerm_resource_group.newresource]
}