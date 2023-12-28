locals {
  stack = "${var.app}-${var.env}-${var.location}"

  default_tags = {
    environment = var.env
    owner       = "Adrien FACHE."
    app         = var.app
  }

}

resource "azurerm_resource_group" "my_first_app" {
  name     = "rg-${local.stack}"
  location = var.region

  tags = local.default_tags
}

resource "azurerm_log_analytics_workspace" "my_first_app" {
  name                = "log-${local.stack}"
  location            = azurerm_resource_group.my_first_app.location
  resource_group_name = azurerm_resource_group.my_first_app.name

  tags = local.default_tags
}