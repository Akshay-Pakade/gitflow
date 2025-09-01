terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
backend "terraform" {
resource_group_name = "akshayWorkflow"
storage_account_name = "akkistg"
container_name = "akkicon"
key = "terraform.tfstate"
}
}
provider "azurerm" {
  features {}
subscription_id = "3be29ba2-b31c-4fbd-a7bb-c51bf50ef740"
  use_oidc = true
}

