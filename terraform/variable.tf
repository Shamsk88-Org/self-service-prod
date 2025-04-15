variable "resource_group_name" {
description = "The name of the Storage Account resource group"
}

variable "storage_account_name" {
description = "The name of the Storage Account"
}

variable "container_name" {
description = "The name of the Storage Container"
}

variable "key" {
description = "The name of the terraform state file"
}

variable "tenant_id" {
description = "The vaule of the Tenant ID"
}

variable "subscription_id" {
description = "The value of the Subscription ID"
}

variable "client_id" {
description = "The value of the Client ID"
}

variable "resource_name" {
description = "The name of the resource"
type        = string
}

variable "location" {
description = "Resource Location"
type        = string
}
