terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cd53e00e-e0a7-42b7-9dec-5447e880f9e7"
}