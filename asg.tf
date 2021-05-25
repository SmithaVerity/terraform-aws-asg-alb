resource "aws_autoscaling_group" "project" {
vpc_zone_identifier = [var.subnet1, var.subnet2]

  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = var.on_demand_base_capacity
      on_demand_percentage_above_base_capacity = var.on_demand_percentage_above_base_capacity
      spot_allocation_strategy                 = "capacity-optimized"
    }
  

  launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.project.id
      }
      
    }
  }
}




