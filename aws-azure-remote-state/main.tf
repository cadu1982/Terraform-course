terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.2.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.60.0"
    }

  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Carlos"
      managed-by = "Terraform"
    }
  }
}

provider "azurerm" {
  features {}
}