output "function_app_id" {
  value = azurerm_function_app.this.id
}

output "function_app_identity" {
  value = azurerm_function_app.this.identity[0].principal_id
}
