resource "aws_launch_template" "project" {
  name          = "ctpscalabilitytesttemp"
  image_id             = var.image_id
  instance_type        = var.instance_type
  tags                 = var.tags
  vpc_security_group_ids = [aws_security_group.alb_sec_group.id]
  
  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "ctpscalabilitytest"
    }
  }
}
