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
}

resource "aws_instance" "app_server" {
    ami = "ami-0ef9e689241f0bb6e"
    instance_type = "t2.micro"
    
    tags = {
        Name = "app-server"
    }
}
