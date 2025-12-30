

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
 backend "azurerm" {
    resource_group_name   = "dev-cus-poc-rg-0001"
    storage_account_name  = "actionuntname"
    container_name        = "ctactionuntname"
    key                   = "actiondev.terraform.tfstate"
  }

}

provider "azurerm" {
  features {

  }
  subscription_id = "ddb23ce9-0db9-442f-9bbd-5a86d4102828"
}