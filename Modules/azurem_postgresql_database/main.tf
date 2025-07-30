resource "azurerm_postgresql_flexible_server_database" "postgresql_database" {
  name      = var.postgresql_database
  server_id = data.azurerm_postgresql_flexible_server.postgresql_server.id
  collation = var.postgresql_db_collation
  charset   = var.postgresql_db_charset

  lifecycle {
    prevent_destroy = true
  }
}