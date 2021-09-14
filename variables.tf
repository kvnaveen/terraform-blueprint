variable "region" {
  type        = string
  description = "Region"
  default     = "ca-central-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vpc_name" {
  type    = string
  default = "Network Test"
}
