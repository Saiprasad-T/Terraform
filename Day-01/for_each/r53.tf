resource "aws_route53_record" "www" {
  for_each = aws_instance.example
  zone_id = var.Zone_id
  name    = "${each.key}-${var.env}.${var.Domain}" #monogodb-dev.devopswiththota.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]   #combines private ip
}

resource "aws_route53_record" "example" {
  zone_id = var.Zone_id
  name    = var.Domain #monogodb-dev.devopswiththota.online
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.example,"frontend").public_ip]   #combines private ip
}