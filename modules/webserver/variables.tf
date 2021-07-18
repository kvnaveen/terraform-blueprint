variable "subnet_id" {
  type = string
  description = "Network in which webserver is deployed to"
}

variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "t2.micro"
}

variable "ami" {
  type = string
  description = "AMIId to be used for webserver"
  default = "ami-09e67e426f25ce0d7"
}