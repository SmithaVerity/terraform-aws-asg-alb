resource "aws_security_group" "asg_sec_group" {
  name        = "asg_sec_group"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id
  tags        = var.tags

  ingress {
    description = "TLS from VPC"
    from_port   = var.sec_group_ingress_from_port1
    to_port     = var.sec_group_ingress_to_port1
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = var.sec_group_ingress_from_port2
    to_port     = var.sec_group_ingress_to_port2
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = var.sec_group_ingress_from_port3
    to_port     = var.sec_group_ingress_to_port3
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
