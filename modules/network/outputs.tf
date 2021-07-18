output "vpc" {
  value = aws_vpc.Network.id
  description = "VPC ID"
}

output "public_subnet" {
  value = aws_subnet.Public.id
  description = "Public Subnet ID"
}