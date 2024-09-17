#1. Command Line -- Terraform plan -var="t3.small"
#2. terraform.tfvars
#3. Environment variables -- export TF_VAR_instance_type = t3.xlarge
#4. Default Values
#5. Prompt

variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This AMI is RHEL-9 DevOps Practice"
}

variable "instance_type"{
    type = string
    default = "t3.micro"

}

variable "tags"{
    #type = map #optional
    default = {
    Name = "Backend"
    Project = "expense"
    Component = "backend"
    Environment = "DEV"
    Terraform = "true"
    }

}

variable "sg_name"{
    default = "allow-sshh"
}

variable "sg_description"{
    default = "Allow port number 22 for SSH access"
}

variable "from_port"{
    default = 22
    type = number
}

variable "to_port"{
    default = 22
    type = number
}

variable "protocol"{
    default = "tcp"
}

variable "ingress_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}