resource "aws_launch_template" "project" {
  name_prefix          = "project"
  image_id             = var.image_id
  instance_type        = var.instance_type
  tags                 = var.tags
  
 
}
