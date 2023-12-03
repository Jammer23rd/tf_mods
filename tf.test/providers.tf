terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "2f82545c-3a8d-4b29-a92e-ba447975c903"
  client_secret   = "4x58Q~C4dT2bt5z-s9GaDllNG9Pau3c6VQfWrbpy"
  tenant_id       = "7e7cfcf7-9b8f-4a3e-a210-6de08c7972a2"
  subscription_id = "bff1291b-20b6-432d-b292-9c125715e974"
}