output "azurerm_container_app_url" {
  value = azurerm_container_app.my_first_app.latest_revision_fqdn
}
