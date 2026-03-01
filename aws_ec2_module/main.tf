resource "aws_instance" "this" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = var.instance_type

    tags = local.final_tags
}
