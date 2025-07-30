data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.rg_name
}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}

data "azurerm_key_vault_secret" "postgresql_admin_username_secret" {
  name         = var.postgresql_admin_username
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "postgresql_admin_passwordname_secret" {
  name         = var.postgresql_admin_passwordname
  key_vault_id = data.azurerm_key_vault.keyvault.id
}






