terraform {
  backend "azurerm" {
    resource_group_name  = "nn-az-700"
    storage_account_name = "nntf786"
    container_name       = "tfstatefile2024"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
