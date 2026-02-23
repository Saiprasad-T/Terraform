variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
  type        = map
  default     = {
        Name = "Roboshop"
        Project = "Roboshop"
        Env = "Dev"
        Terraform = true
    }
}

variable "sg_from_port" {
    type = number
    default = 0
}

variable "sg_to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_name" {
    type = string
    default = "allow_tls_from_terraform"
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}