output "sql_server_name" {
  value = azurerm_mssql_server.this.name
}

output "sql_database_id" {
  value = azurerm_mssql_database.this.id
}
