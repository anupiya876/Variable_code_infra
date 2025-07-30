resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

     network_rules {
    default_action             = var.network_default_action
    ip_rules                   = var.network_ip_rules
    virtual_network_subnet_ids = data.azurerm_subnet.subnet.id
  }
}