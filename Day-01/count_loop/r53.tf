resource "aws_route53_record" "www" {
  count = 3
  zone_id = var.Zone_id
  name    = "${var.instances[count.index]}-${var.Env}.${data.aws_route53_zone.domain.id}"   #mongodb-dev.devopswiththota.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}