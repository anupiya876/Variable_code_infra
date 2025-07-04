data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.rg_name
}

data "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = var.rg_name
}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}

data "azurerm_key_vault_secret" "vm_id_secret" {
  name         = var.admin_username
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "vm_password_secret" {
  name         = var.admin_password_name
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

