output "resource_group_name" {
  value = azurerm_resource_group.demo.name
}

output "sql_server_name" {
  value = azurerm_mssql_server.demo_sql_server.name
}

output "sql_server_id" {
  value = azurerm_mssql_server.demo_sql_server.id
}

output "sql_database_name" {
  value = azurerm_mssql_database.demo_sql_db.name
}
