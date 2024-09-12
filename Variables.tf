# all variables here including names of resource group , appservice and appserviceplan
# name and location of resource group
variable "rg_name" {
  default = "rg-dev-vm-infra-001"
}
variable "rg_region" {
    default = "uaenorth"
}

#name of app service plan
variable "app_service_plan_name" {
  default = "asp-test-coreinfra-001"
}

#name of app service
variable "app_service_name" {
  default = "app-dev-coreweb-001"
}