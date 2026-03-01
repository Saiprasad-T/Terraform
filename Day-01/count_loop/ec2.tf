resource "aws_instance" "example" {
  count = 3
  ami           = data.aws_ami.example.id
  instance_type = var.Env == "Dev" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "${var.instances[count.index]}-${var.Env}"
    Project = "Roboshop"
    Env = "Dev"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

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
    Name = "my-second-security-group"
  }
}