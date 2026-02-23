output "roboshop_instances" {
    value = aws_instance.terraform_master
    description = "output of ec2 instance"
}