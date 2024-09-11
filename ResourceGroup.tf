resource "azurerm_resource_group" "rg-dev" {
    name = var.rg_name
    location = var.rg_region

    tags = {
      environment = "development"
      project ="SampleAPP"
      owner="Harsh"
    }
}