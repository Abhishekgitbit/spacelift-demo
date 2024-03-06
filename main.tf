terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "eu-west-1"
    profile = "abhishek-mendix-sandbox"
}

resource "aws_instance" "app_server" {
    ami = "ami-0ef9e689241f0bb6e"
    instance_type = "t2.micro"
    subnet_id     = "subnet-0b8051ee4ec365f3d"
    
    tags = {
        Name = "app-server"
    }
}
