terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.zmienna_AG_nazwa
  location = var.zmienna_AG_lokacja
}

resource "azurerm_storage_account" "example" {
  name                     = var.zmienna_AA_nazwa
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.zmienna_AA_tier
  account_replication_type = var.zmienna_AA_replikacja

  tags = {
    environment = var.zmienna_AA_tagi
  }
}