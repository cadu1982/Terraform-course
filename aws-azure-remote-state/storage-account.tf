resource "azurerm_resource_group" "first_resource_group" {
  name     = "remote_state"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "first_stoarge_account" {
  name                     = "carlosponceremotestate"
  resource_group_name      = azurerm_resource_group.first_resource_group.name # refere-se ao bloco de cima
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags
}

resource "azurerm_storage_container" "first_container" {
  name                 = "remote-state"
  storage_account_name = azurerm_storage_account.first_stoarge_account.name
}