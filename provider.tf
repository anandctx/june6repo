terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.37.0"
    }
  }
  required_version = ">=1.0.0"
}

# terraform {

#     backend "azurerm"{

#     }
# }


provider "azurerm" {
  subscription_id = "a17540d4-e10b-49ee-8dbf-85d5a412044c"
  tenant_id       = "e7c1220e-2c19-448d-8a74-98044bde8f13"
  client_id       = "52647cce-d7b8-4064-ad23-aedb5e14acce"
  client_secret   = "l4R8Q~ZRjsQLDS0fhnSx1vAs3cSKFNNuDx15Uc~b"
  features {
  }

}    