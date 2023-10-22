terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "ec2-module" {
  source = "../modules/ec2/"
  instance_name = var.instance_name
}

variable "instance_name" {
  default  = "b-instance"
}
