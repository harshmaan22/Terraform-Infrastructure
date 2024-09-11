resource "azurerm_app_service_plan" "asp-dev" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg-dev.location
  resource_group_name = azurerm_resource_group.rg-dev.name

  tags = {
    environment="development"
    project ="SampleAPP"
    owner="Harsh"
  }

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg-dev.location
  resource_group_name = azurerm_resource_group.rg-dev.name
  app_service_plan_id = azurerm_app_service_plan.asp-dev.id

  site_config {
    dotnet_framework_version = "v4.0"  
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}
