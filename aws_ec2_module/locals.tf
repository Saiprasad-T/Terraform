locals {
    common_tags = {
        project = var.project
        Env = var.Env
        Component = var.component
    }
     final_tags = merge (
        local.common_tags,
        var.ec2_tags
     )
}