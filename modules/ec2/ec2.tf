resource "aws_instance" "app_server" {
  ami           = "ami-0df435f331839b2d6"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0d4205df3c8e38d79"
  tags = {
    Name = var.instance_name
  }
}

variable "instance_name" {
  type = string
  description = "Variable to define the instance name"
}
