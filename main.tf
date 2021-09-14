terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

module "network" {
  source   = "./modules/network"
  vpc_name = var.vpc_name
}

# module "webserver" {
#   source        = "./modules/webserver"
#   subnet_id     = module.network.public_subnet
#   instance_type = var.instance_type
# }
