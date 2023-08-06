terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "hatem-RG"
        storage_account_name = "statusinfra"
        container_name       = "blobterraform"
        key                  = "terraform.tfstate"
    }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "f2894e9a-fe28-48d7-9505-afa2724530d7"
}
