resource "azurerm_mssql_server" "this" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_mssql_database" "this" {
  name                = var.sql_database_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_mssql_server.this.name
  sku {
    name     = "S0"
    tier     = "Standard"
    capacity = 10
  }
}
