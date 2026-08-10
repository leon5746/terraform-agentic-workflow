variable "location" {
  description = "Azure region where the resources will be deployed"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-terraform-agentic-demo"
}

variable "storage_account_name" {
  description = "Globally unique name for the Storage Account"
  type        = string
}