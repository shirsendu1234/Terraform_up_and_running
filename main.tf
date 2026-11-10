terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-03081c3f9c48b414e"
  instance_type = "t3.micro"

  tags = {
    Name                = "terraform-example"
    free-tier-eligible = "true"
  }
}