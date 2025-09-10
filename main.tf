data "azurerm_client_config" "current" {}

data "azuredevops_project" "main" {
  name = var.azuredevops_project
}
