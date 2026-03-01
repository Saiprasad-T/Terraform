output "this" {
  value =  aws_instance.this.ids
}

output "public_ip" {
  value =  aws_instance.this.public_ip
}

output "private_ip" {
  value =  aws_instance.this.private_ip
}