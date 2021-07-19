locals {
  instance_name = "${terraform.workspace}-instance"
}

resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = local.instance_name
  }
  root_block_device {
    encrypted = true
  }
}
