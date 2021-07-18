# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

# Configure the AWS Provider
provider "aws" {
  region     = var.region
}

module "network" {
  source   = "./modules/network"
  vpc_name = "network_vpc"
}

module "webserver" {
  source = "./modules/webserver"
  subnet_id = module.network.public_subnet
}
