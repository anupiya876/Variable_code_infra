terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
features {}
subscription_id = "7cfefeda-2965-424b-b4df-23e891842246"
}