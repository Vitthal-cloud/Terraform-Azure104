terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "location" {
  description = "Azure region where resource will be created"
  type = string
  default = "East US"
}

variable "environment" {
  description = "deployment environment (Dev, prod, test)"
  type = string
  default = "dev"
}

locals {
  resource_group_name = "rg-${var.environment}-day2"
  common_tags = {
    environment = var.environment
    managed_by  = "terraform"
    project     = "Day2-project"
  }
  
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location

  tags = local.common_tags
}

output "resource_group_name" {
    description = "Name of the created resource group"
    value = azurerm_resource_group.rg.name
}

output "resource_group_location" {
    description = "Location of the created resource group"
    value = azurerm_resource_group.rg.location
  
}