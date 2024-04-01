resource "aws_autoscaling_group" "project" {
vpc_zone_identifier = [var.subnet1, var.subnet2]

  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  health_check_grace_period = var.health_check_grace_period
  health_check_type         = "ELB"

  
}



