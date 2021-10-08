terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = "ca-central-1"
  default_tags {
    tags = var.tags
  }
}

variable "tags" {
  type = map(string)
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
