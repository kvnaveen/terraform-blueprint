locals {
  state_bucket = var.state_bucket
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {}
}

# data "terraform_remote_state" "state" {
#   backend = "s3"
#   config {
#     bucket = "test-statebucket446e0578-rkokcr4bdu3f"
#     key = "states/terraform.tfstate"
#     region = env.AWS_DEFAULT_REGION
#   }
# }

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

module "network" {
  source   = "./modules/network"
  vpc_name = "network_vpc"
}

# module "webserver" {
#   source = "./modules/webserver"
#   subnet_id = module.network.public_subnet
# }
