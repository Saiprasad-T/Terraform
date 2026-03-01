variable "instances" {
 default = {
    mongodb = "t3.micro"
    redis = "t3.small"
    frontend = "t3.micro"
 }
}

variable "Env" {
  type        = string
  default     = "dev"
}


variable "Zone_id" {
  type        = string
  default     = "Z054884433KSB5YRIKHVR"
  description = "zone_id"
}

variable "Domain" {
  type        = string
  default     = "devopswiththota.online"
  description = "Domain"
}

variable env {
  type        = string
  default     = "dev"
  description = "description"
}

