output "instance_id" {
    description = "ID of EC2 Instance"
    value = aws_instance.app_server.id
  
}

output "instance_public_ip" {
    description = "public ip of EC2 Instance"
    value = aws_instance.app_server.public_ip
  
}

# random comment