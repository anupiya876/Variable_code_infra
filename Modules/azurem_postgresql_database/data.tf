data "azurerm_postgresql_flexible_server" "postgresql_server" {
  name                = var.postgresql_server_name
  resource_group_name = var.rg_name
}

