data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}