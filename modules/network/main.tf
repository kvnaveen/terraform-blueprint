terraform {
  required_version = ">=1.0.2"
}

locals {
  vpc_name = "${terraform.workspace}-${var.vpc_name}"
  subnet_name = "${terraform.workspace}-Public"
}
resource "aws_vpc" "Network" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = local.vpc_name
  }
}

resource "aws_subnet" "Public" {
  cidr_block = var.public_cidr
  vpc_id     = aws_vpc.Network.id
  tags = {
    "Name" = local.subnet_name
  }
}

output "NetworkVpcId" {
  value       = aws_vpc.Network.id
  description = "VPC Id"
}

output "PublicSubnetId" {
  value       = aws_subnet.Public.id
  description = "Public Subnet Id"
}
