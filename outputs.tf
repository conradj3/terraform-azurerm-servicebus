output "Azure_ServiceBus_Namespace_Id" {
   value = azurerm_servicebus_namespace.sb.id
   description = "This is your Azure Servicebus Namespace Id."
}
output "Azure_ServiceBus_Namespace_Name" {
   value = azurerm_servicebus_namespace.sb.name
   description = "This is your Azure Servicebus Namespace name."
}
output "Azure_ServiceBus_Namespace_Location" {
   value = azurerm_servicebus_namespace.sb.location
   description = "This is your Azure Servicebus Resourcegroup location."
}
output "Azure_ServiceBus_Namespace_Resourcegroup" {
   value = azurerm_servicebus_namespace.sb.resource_group_name
   description = "This is your Azure Servicebus Resourcegroup name."
}
output "Azure_ServiceBus_Namespace_Sku" {
   value = azurerm_servicebus_namespace.sb.sku
   description = "This is your Azure Servicebus sku."
}
output "Azure_ServiceBus_Namespace_Tags" {
   value = azurerm_servicebus_namespace.sb.tags
   description = "This is your Azure Servicebus Resource tags."
}
output "Azure_ServiceBus_Namespace_Authrule_Name" {
   value = azurerm_servicebus_namespace_authorization_rule.sbauth.name
   description = "This is your Azure Servicebus Authentication rule name."
}
output "Azure_ServiceBus_Namespace_Authrule_Listen" {
   value = azurerm_servicebus_namespace_authorization_rule.sbauth.listen
   description = "This is your Azure Servicebus Authentication Listen setting."
}
output "Azure_ServiceBus_Namespace_Authrule_Send" {
   value = azurerm_servicebus_namespace_authorization_rule.sbauth.send
   description = "This is your Azure Servicebus Authentication Send setting."
}
output "Azure_ServiceBus_Namespace_Authrule_Manage" {
   value = azurerm_servicebus_namespace_authorization_rule.sbauth.manage
   description = "This is your Azure Servicebus Authentication Mange setting."
}
