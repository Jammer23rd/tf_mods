# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = var.location
}

resource "azurerm_app_service_certificate_order" "test" {
  name                = "${var.prefix}-autoacc"
  location            = "global"
  resource_group_name = azurerm_resource_group.example.name
  distinguished_name  = "CN=example.com"
  product_type        = "Standard"
}
