terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "mystorageaccount123"
}
