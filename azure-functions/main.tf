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

resource "azurerm_service_plan" "example" {
  name                = var.zmienna_AP_nazwa
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = var.zmienna_AP_OS
  sku_name            = var.zmienna_AP_SKU
}

resource "azurerm_linux_function_app" "example" {
  name                = var.zmienna_AFA_nazwa
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  storage_account_name       = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
  service_plan_id            = azurerm_service_plan.example.id

  site_config {}
}

resource "azurerm_function_app_function" "example" {
  name            = var.zmienna_FAF_nazwa
  function_app_id = azurerm_linux_function_app.example.id
  language        = var.zmienna_FAF_jezyk
  test_data = jsonencode({
    "name" = var.zmienna_FAF_jezyk_danych
  })
  config_json = jsonencode({
    "bindings" = [
      {
        "authLevel" = var.zmienna_FAF_authlevel
        "direction" = var.zmienna_FAF_direction
        "methods" = [
          var.zmienna_FAF_method1,
          var.zmienna_FAF_method2,
        ]
        "name" = var.zmienna_FAF_bindname
        "type" = var.zmienna_FAF_bindtype
      },
      {
        "direction" = var.zmienna_FAF_jsondir
        "name"      = var.zmienna_FAF_jsonname
        "type"      = var.zmienna_FAF_jsontype
      },
    ]
  })
}