variable "azure_resourcegroup" {
  description = "Azure Resource group name."
  type = string
}
variable "azure_location" {
  description = "Azure Regional location."
  type = string
}

variable "azure_servicebus_namespace" {
  type = string
  description = "Azure Service Bus Namespace name."
}

variable "azure_servicebus_sku" {
  type = string
  description = "Azure Service Bus Namespace sku. Supports (Standard/Premium)"
  default = "Standard"
 }
variable "azure_resource_tags" {
  type    = map(string)
  description = "Azure Resource tags."
  default = {
    build = "terraform"
    provider = "Hashicorp AzureRm"
  }
}

variable "azure_servicebus_auth_listen" {
  type = bool
  description = "Azure Service Bus Authentication Rule for listening."
  default = true
 }

 variable "azure_servicebus_auth_send" {
  type = bool
  description = "Azure Service Bus Authentication Rule for sending."
  default = true
 }
 
  variable "azure_servicebus_auth_manage" {
  type = bool
  description = "Azure Service Bus Authentication Rule for managing."
  default = false
 }