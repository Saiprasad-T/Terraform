resource "aws_instance" example {
   for_each = var.instances
   ami = data.aws_ami.example.id
   instance_type = each.value
   vpc_security_group_ids = [aws_security_group.my-security-group-01.id]

   tags = {
     Name = "${each.key}-${var.Env}"
     Project = "Roboshop"
     Env = "dev"

   }
}

resource "aws_security_group" "my-security-group-01" {
  name        = "my-security-group-01"

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

   ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    tags = {
    Name = "allow_tls_from_tf"
  }
}