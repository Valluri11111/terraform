variable "instances"{
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id"{
    default = "Z03120773DBZ5NI6QMHHA"
}

variable "domain_name" {
    default = "rajeshvalluri.online"
}
