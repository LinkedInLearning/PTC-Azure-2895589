terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" { 
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}
}

resource "azurerm_resource_group" "rg" {
  name      = "rg-dadapp-tf"
  location = "centralus"
}

resource "azurerm_app_service_plan" "plan" {
    name                = "tf-dadapp-plan"
    location            = "${azurerm_resource_group.rg.location}"
    resource_group_name = "${azurerm_resource_group.rg.name}"

    sku {
        tier = "Free"
        size = "F1"
    }  
}

resource "azurerm_app_service" "main" {
    name                = "tf-dadapp-site"
    location            = "${azurerm_resource_group.rg.location}"
    resource_group_name = "${azurerm_resource_group.rg.name}"
    app_service_plan_id = "${azurerm_app_service_plan.plan.id}"

    app_settings = {
      "EnvName" = "Terraform"
      "FavoriteColor" = "lightpink"
    }
}
