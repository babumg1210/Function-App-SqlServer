variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region to create resources in."
  type        = string
  default     = "East US"
}

variable "function_app_name" {
  description = "The name of the Function App."
  type        = string
}

variable "sql_server_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "sql_database_name" {
  description = "The name of the SQL Database."
  type        = string
}

variable "sql_admin_username" {
  description = "The SQL Server administrator username."
  type        = string
}

variable "sql_admin_password" {
  description = "The SQL Server administrator password."
  type        = string
}
