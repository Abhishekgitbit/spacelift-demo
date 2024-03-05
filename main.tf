provider "aws" {
    region = "eu-west-1"
    profile = "abhishek-mendix-sandbox"
    
}

resource "aws_instance" "app_server" {
    ami = "ami-0ef9e689241f0bb6e"
    instance_type = "t2.micro"
    
    tags = {
        Name = "app-server"
    }
}
