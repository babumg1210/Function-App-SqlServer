resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_password
}

resource "azurerm_mssql_database" "sql_database" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_id           = azurerm_mssql_server.sql_server.id
  requested_service_objective_name = "S1"
}
