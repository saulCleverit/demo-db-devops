output "resource_group_name" {
  value = azurerm_resource_group.demo.name
}

output "sql_server_name" {
  value = azurerm_mssql_server.demo_sql_server.name
}

output "sql_server_id" {
  value = azurerm_mssql_server.demo_sql_server.id
}

output "sql_database_name_DEV" {
  value = azurerm_mssql_database.dev_sql_db.name
}

output "sql_database_id_PROD" {
  value = azurerm_mssql_database.prod_sql_db.id
}
