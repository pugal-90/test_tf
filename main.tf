terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


resource "aws_instance" "tf_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = 1
  tags = {
    Name = "Instance ${count.index}"
  }
}
