variable "location" {}
variable "tags" {}

variable "project_name" {}
variable "environment_name" {}
variable "resource_prefix" {}
variable "rg_name" {}
variable "api_name" {}

locals {
  api_name              = var.api_name
  storage_account_name  = "sa${var.project_name}${var.environment_name}${local.api_name}"
  app_service_plan_name = "asp-${var.resource_prefix}-${local.api_name}"
  function_name         = "fct-${var.resource_prefix}-${local.api_name}"

  storage_tier             = "Standard"
  storage_replication_type = "LRS"
  app_service_plan_kind    = "FunctionApp"
  sku_tier                 = "Dynamic"
  sku_size                 = "Y1"
}
