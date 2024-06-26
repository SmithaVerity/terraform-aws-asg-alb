variable "desired_capacity" {
    default    = 2
}
variable "max_size" {
    default    = 5
}

variable "min_size" {
    default    = 1
}
        
        
variable "instance_type" {
    default    = "t2.micro"
}

# variable "ami_images" {}
# variable "ami_image_owners" {}
variable "region" {
    default             = "ap-south-1"
}

variable "tags" {
    type = map
    default     = {}
}   
variable "subnet1" {}
variable "subnet2" {}
variable "vpc_id" {}
variable "sec_group_ingress_from_port" {}
variable "sec_group_ingress_to_port" {}
variable "lb_port" {}
variable "lb_protocol" {}
variable "health_check_grace_period" {}
variable "healthy_threshold" {}
variable "unhealthy_threshold" {}
variable "timeout" {}
variable "interval" {}
variable "image_id" {}
