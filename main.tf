provider "azurerm" {
  features {}
}

module "londonscaleset" {
  source   = "./Scaleset"
  location = "uksouth"
  prefix   = "london"
  in       = "9"
  inmins   = "0"
  out      = "17"
  outmins  = "0"

  tags = {
    Environment = "Production"
  }
}

module "mumbaiscaleset" {
  source   = "./Scaleset"
  location = "eastasia"
  prefix   = "mumbai"
  in       = "2"
  inmins   = "30"
  out      = "10"
  outmins  = "30"

  tags = {
    Environment = "Development"
  }
}

module "parisscaleset" {
  source   = "./Scaleset"
  location = "francecentral"
  prefix   = "paris"
  in       = "10"
  inmins   = "0"
  out      = "15"
  outmins  = "0"

  tags = {
    Environment = "Staging"
  }
}