resource "aws_route53-record" "expense" {
    for_each = aws_instance.expense
    zone_id = var.zone_id
    #mysql.rajeshvalluri.online
    name = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = each.key == "frontend" ? [each.value.public_ip] : [each.value.privare_ip]
    allow_overwrite = yes
}