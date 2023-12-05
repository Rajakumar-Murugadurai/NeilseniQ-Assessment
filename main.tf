# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0.0"
    }
  }

  required_version = ">= 2.0.0"
  backend "azurerm" {}

}

provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "niq-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoAppNiq"
  }
}


