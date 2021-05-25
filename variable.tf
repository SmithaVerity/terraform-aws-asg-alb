variable "desired_capacity" {
    default    = 3
}
variable "max_size" {
    default    = 5
}

variable "min_size" {
    default    = 1
}
        
        
variable "instance_type" {
    default    = "c5.large"
}
variable "region" {
    default             = "us-east-1"
}

variable "tags" {
    type = map
}   
variable "subnet1" {}
variable "subnet2" {}
variable "vpc_id" {}
variable "on_demand_base_capacity" {}
variable "on_demand_percentage_above_base_capacity" {}
variable "blacklisted_country" {}
variable "blacklisted_ip" {}
variable "key_location" {}
variable "key_name" {}
variable "load_balancer_port" {}
variable "load_balancer_protocol" {}
variable "sec_group_ingress_from_port1" {}
variable "sec_group_ingress_to_port1" {}
variable "sec_group_ingress_from_port2" {}
variable "sec_group_ingress_to_port2" {}
variable "sec_group_ingress_from_port3" {}
variable "sec_group_ingress_to_port3" {}
variable "lb_target_group_port" {}
variable "lb_target_group_protocol" {}