resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = "terraformm"
    }
    # In this case mylaptop is local
    # provisioner "local-exec" {
    #     # command = "echo ${self.private_ip} >> public_ip.txt"
    #     command = "echo $DevOps $class >> value.txt"
    #     environment = {
    #       DevOps = "terraform code"
    #     }
    #}
    provisioner "local-exec" {
        command = "echo 'Instance ID: ${self.id}' > instance_info.txt"
   }
}
resource "aws_security_group" "allow_ssh_terraform" {
    name        = "allow_sshh" #allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egresss
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name= "allow-sssh"
  }
}