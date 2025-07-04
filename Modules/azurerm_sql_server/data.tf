data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}

data "azurerm_key_vault_secret" "administrator_login_id_secret" {
  name         = var.administrator_login_id
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "administrator_password_secret" {
  name         = var.administrator_login_password_name
  key_vault_id = data.azurerm_key_vault.keyvault.id
}