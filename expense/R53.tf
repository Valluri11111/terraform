resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  #Backend.rajeshvalluri.online
  name    =  "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]
}