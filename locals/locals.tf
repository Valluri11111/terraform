locals {
    domain_name = "rajeshvalluri.online"
    zone_id = "Z03120773DBZ5NI6QMHHA"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.small"
}