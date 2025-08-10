resource "azurerm_postgresql_flexible_server" "postgresql_server" {
  name                          = var.postgresql_server_name
  resource_group_name           = var.rg_name
  location                      = var.location
  version                       = var.postgresql_server_version
  delegated_subnet_id           = data.azurerm_subnet.subnet.id
# private_dns_zone_id           = azurerm_private_dns_zone.example.id
  public_network_access_enabled = false
  administrator_login           = data.azurerm_key_vault_secret.postgresql_admin_username_secret.value
  administrator_password        = data.azurerm_key_vault_secret.postgresql_admin_passwordname_secret.value
  zone                          = var.postgresql_server_zone

  storage_mb   =  var.postgresql_server_storage
  storage_tier =  var.postgresql_server_storage_tier

  sku_name   = var.postgresql_server_sku_name
# depends_on = [azurerm_private_dns_zone_virtual_network_link.example]

}

