resource "aws_instance" "terraform_master" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name = "Terraform"
        Project = "Roboshop"
        Env = " Dev"
    }
}

resource "aws_security_group" "allow_tls" {  #terraform name to track to resource
  name        = "allow_tls_createdby_me" #aws name to track in aws console
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls_createdby_me"
    Env = "Dev"
    Project = "Roboshop"
  }
}