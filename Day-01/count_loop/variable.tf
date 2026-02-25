variable "instances" {
    default = ["mongodb", "mysqld" , "redis"]
    type = "string"
}