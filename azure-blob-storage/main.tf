resource "azurerm_resource_group" "example" {
  name     = var.zmienna_AG_nazwa
  location = var.zmienna_AG_lokacja
}

resource "azurerm_storage_account" "example" {
  name                     = var.zmienna_AA_nazwa
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.zmienna_AA_tier
  account_replication_type = var.zmienna_AA_replication
  tags = {
    environment = var.zmienna_AA_tags
  }
}
resource "azurerm_storage_container" "example" {
  name                  = var.zmienna_AC_nazwa
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.zmienna_AC_container_access
}

resource "azurerm_storage_blob" "example" {
  name                   = var.zmienna_AB_nazwa
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.zmienna_AB_type
  source                 = var.zmienna_AB_source
}