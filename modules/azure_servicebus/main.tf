# Azure Resource Group Creation
resource "azurerm_resource_group" "rg" {
  name     = var.azure_resourcegroup
  location = var.azure_location
  tags     = var.tags
}

# Azure Servicebus Namespace Creation
resource "azurerm_servicebus_namespace" "sb" {
  name                = var.azure_servicebus_namespace
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = var.azure_servicebus_sku
  tags                = var.azure_resource_tag
}

# Azure Servicebus Authorization Rule
resource "azurerm_servicebus_namespace_authorization_rule" "sbauth" {
  name                = format("%S-DefaultAuth",azurerm_servicebus_namespace.sb.name)
  namespace_name      = azurerm_servicebus_namespace.sb.name
  resource_group_name = azurerm_resource_group.rg.name
  listen = var.azure_servicebus_auth_listen
  send   = var.azure_servicebus_auth_send
  manage = var.azure_servicebus_auth_manage
}
