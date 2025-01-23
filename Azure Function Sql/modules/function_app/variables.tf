variable "function_app_name" {
  description = "The name of the Function App."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region to create resources in."
  type        = string
}
