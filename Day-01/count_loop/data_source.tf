data "aws_route53_zone" "domain" {
  name         = var.Domain
  private_zone = false
}

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }
}