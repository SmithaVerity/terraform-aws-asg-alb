resource "aws_launch_template" "project" {
  name_prefix          = "project"
  image_id             = data.aws_ami.image.id
  instance_type        = var.instance_type
  key_name             = aws_key_pair.asg_key_pair.key_name
  user_data            = filebase64("${path.module}/userdata.sh")
  tags              = var.tags

  
}
