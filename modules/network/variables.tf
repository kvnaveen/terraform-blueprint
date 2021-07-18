variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "cidr_block" {
  type        = string
  description = "VPC Cidr block"
  default     = "10.10.0.0/16"
}

variable "public_cidr" {
  type        = string
  description = "Public Subnet Cidr block"
  default     = "10.10.10.0/24"
}
