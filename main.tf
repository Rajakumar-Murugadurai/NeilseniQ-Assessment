# Configure the Azure provider
#terraform {
#  required_providers {
#    azurerm = {
#      source  = "hashicorp/azurerm"
#      version = "~> 3.0.2"
#    }
#  }

#  required_version = ">= 1.1.0"
#  backend "azurerm" {}

#}

#provider "azurerm" {
#  features {}
#}



#resource "azurerm_resource_group" "rg" {
#  name     = "niq-rg"
#  location = var.location-rg
#  tags = {
#    "Application" = "DemoAppNiq"
#  }
#}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0.0"
      skip_provider_registration = true
    }
  }

  features {}
}

provider "azurerm" {
  features = {}
}

# Your existing provider configuration
provider "azurerm" {
  # Other provider configurations...

  # Adjust the following based on your actual subscription ID and tenant ID
  subscription_id = "381e41a3-851a-4f47-9c43-4084c9be9bdc"
  tenant_id       = "28f38b70-580e-4091-921f-4b06b4d6f5fc"
}

resource "azurerm_resource_group" "rg" {
  name     = "niq-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoAppNiq"
  }





