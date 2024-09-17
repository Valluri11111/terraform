output "public-ip" {
    value  = aws_instance.terraform.public_ip
    sensitive = false
    description = "This is the public IP of created Instance"
  }