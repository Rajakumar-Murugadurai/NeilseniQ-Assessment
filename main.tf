#  Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
  backend "azurerm" {}
  
  features = {
    # Disabling automatic registration of Resource Providers
    skip_provider_registration = true
  }

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