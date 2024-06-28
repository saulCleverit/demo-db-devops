variable "azurerm_resource_group_name" {
  description = "The name of the Azure Resource Group"
  default     = "demo-db-devops-rg"

}

variable "location" {
  description = "The location where resources will be created"
  default     = "Central US"
}



variable "backend_resource_group_name" {
  description = "The name of the Azure Resource Group for the backend"
  type        = string
}

variable "backend_storage_account_name" {
  description = "The name of the Azure Storage Account for the backend"
  type        = string
}

variable "backend_container_name" {
  description = "The name of the Azure Storage Container for the backend"
  type        = string
}

variable "backend_key" {
  description = "The key for the backend"
  type        = string
}

variable "sql_server_name" {
  description = "The name of the SQL Server"
}

variable "dev_sql_database_name" {
  description = "Dev SQL Database Name"
}

variable "prod_sql_database_name" {
  description = "Prod SQL Database Name"
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

variable "client_id" {
  description = "The client ID for Azure resources"
  type        = string
}

variable "client_secret" {
  description = "The client secret for Azure resources"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for Azure resources"
  type        = string
}
