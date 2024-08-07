provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

}

terraform {
  backend "azurerm" {}
}
resource "azurerm_resource_group" "demo" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_mssql_server" "demo_sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.demo.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password

  identity {
    type = "SystemAssigned"
  }
}



resource "azurerm_mssql_database" "dev_sql_db" {
  name        = var.dev_sql_database_name
  server_id   = azurerm_mssql_server.demo_sql_server.id
  sku_name    = "S0"
  max_size_gb = 10
}

resource "azurerm_mssql_database" "prod_sql_db" {
  name        = var.prod_sql_database_name
  server_id   = azurerm_mssql_server.demo_sql_server.id
  sku_name    = "S0"
  max_size_gb = 10
}


resource "azurerm_mssql_firewall_rule" "example" {
  name             = "allow_all"
  server_id        = azurerm_mssql_server.demo_sql_server.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}

