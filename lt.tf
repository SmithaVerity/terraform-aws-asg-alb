resource "aws_launch_template" "project" {
  name_prefix          = "project"
  image_id             = var.image_id
  instance_type        = var.instance_type
  tags                 = var.tags
  vpc_security_group_ids = [aws_security_group.alb_sec_group.id]
 
}
