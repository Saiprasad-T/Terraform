resource "aws_route53_record" "Arecords" {
  count = 5
  zone_id = var.zone_id
  #interpoliation
  name    = "${var.instances[count.index]}.${var.dns_name}" #mongodb.devopswithsaithota.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform_master[count.index].private_ip]
}