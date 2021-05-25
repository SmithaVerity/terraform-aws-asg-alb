resource "aws_lb_target_group" "project" {
  name     = "project"
  port     = var.lb_target_group_port
  protocol = var.lb_target_group_protocol
  vpc_id   = var.vpc_id
  
  
}

