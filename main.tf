terraform {

  required_version = ">=1.0.0"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "pabloshizatoremotestate"
    storage_account_name = "pabloshinzatostate"
    container_name       = "azure-vnet/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

} 
