output "function_app_name" {
  value = azurerm_function_app.this.name
}

output "function_app_identity" {
  value = azurerm_function_app.this.identity[0].principal_id
}
