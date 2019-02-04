variable "project" {
  default = "Unknown"
}

variable "environment" {
  default = "Unknown"
}

variable "vpc_id" {}

variable "ami_id" {
  default = "ami-6944c513"
}

variable "ami_owners" {
  default = ["self", "amazon", "aws-marketplace"]
}

variable "lookup_latest_ami" {
  default = false
}

variable "root_block_device_type" {
  default = "gp2"
}

variable "root_block_device_size" {
  default = "8"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "cpu_credit_specification" {
  default = "standard"
}

variable "detailed_monitoring" {
  default = false
}

variable "key_name" {}

variable "cloud_config_content" {}

variable "cloud_config_content_type" {
  default = "text/cloud-config"
}

variable "health_check_grace_period" {
  default = "600"
}

variable "desired_capacity" {
  default = "1"
}

variable "min_size" {
  default = "1"
}

variable "max_size" {
  default = "1"
}

variable "enabled_metrics" {
  default = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupPendingInstances",
    "GroupStandbyInstances",
    "GroupTerminatingInstances",
    "GroupTotalInstances",
  ]

  type = "list"
}

variable "subnet_ids" {
  type = "list"
}

variable "target_tracking_metric_type" {
  default = "ASGAverageCPUUtilization"
}

variable "ecs_cluster_cpu_reservation_target" {
  default = "90.0"
}

variable "ecs_cluster_memory_reservation_target" {
  default = "90.0"
}
