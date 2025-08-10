terraform {
  backend "azurerm" {
    resource_group_name = "anu_workrg"
    storage_account_name = "anustgaccount"
    container_name = "anubackendcontainer"
    key = "anu.terraform.statefile"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
features {}
subscription_id = "5fbead97-423e-4814-809c-114db991d911"
}