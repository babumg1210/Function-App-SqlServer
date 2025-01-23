provider "azurerm" {
  features {}
}

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location           = var.location
}

module "function_app" {
  source              = "./modules/function_app"
  function_app_name   = var.function_app_name
  resource_group_name = module.resource_group.resource_group_name
  location           = var.location
}

module "sql_server" {
  source              = "./modules/sql_server"
  sql_server_name     = var.sql_server_name
  sql_database_name   = var.sql_database_name
  resource_group_name = module.resource_group.resource_group_name
  location           = var.location
  sql_admin_username  = var.sql_admin_username
  sql_admin_password  = var.sql_admin_password
}

resource "azurerm_role_assignment" "function_app_sql_access" {
  principal_id   = module.function_app.function_app_identity
  role_definition_name = "Contributor"
  scope          = module.sql_server.sql_database_id
}
