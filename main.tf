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
  region     = "us-east-1"
  access_key = "AKIAWDA4HJONJ5QTPQMD"
  secret_key = "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"
}

module "network" {
  source   = "./modules/network"
  vpc_name = "network_vpc"
}

module "webserver" {
  source = "./modules/webserver"
  subnet_id = module.network.public_subnet
}
