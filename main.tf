provider "azurerm" {
  features {}
}

module "londonscaleset" {
  source   = "./London"
  location = "uksouth"
  prefix   = "london"
}

module "mumbaiscaleset" {
  source   = "./Mumbai"
  location = "westindia"
  prefix   = "mumbai"
}

module "parisscaleset" {
  source   = "./Paris"
  location = "francecentral"
  prefix   = "paris"
}