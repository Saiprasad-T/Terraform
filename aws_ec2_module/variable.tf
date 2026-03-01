variable "project" {
    type = "string"
}

variable "Env" {
    type = "string"
}

variable "instance_type" {
    type = "string"
    default = "t3.micro"
}

variable "ec2_tags" {
  type        = string
  default     = {}
}

variable  "component {
  type        = string
}
