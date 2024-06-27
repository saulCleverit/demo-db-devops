variable "azurerm_resource_group_name" {
  description = "The name of the Azure Resource Group"
  default     = "demo-db-devops-rg"

}

variable "location" {
  description = "The location where resources will be created"
  default     = "Central US"
}

variable "sql_server_name" {
  description = "The name of the SQL Server"
}

variable "sql_database_name" {
  description = "The name of the SQL Database"
}

variable "admin_username" {
  description = "The admin username for the SQL Server"
}

variable "admin_password" {
  description = "The admin password for the SQL Server"
}


variable "subscription_id" {
  description = "The subscription ID for Azure resources"
  type        = string
}
