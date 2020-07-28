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
}

module "londonscaleset" {
  source   = "./Paris"
  location = "francecentral"
}