version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "ec2"
  }
}

variable "launch_template_id" {
  global_variable = "fleet_launch_template_id"
}

variable "launch_template_version" {
  global_variable = "fleet_launch_template_version"
}

variable "capacity_type" {
  global_variable = "fleet_capacity_type"
}

variable "total_capacity" {
  global_variable = "fleet_total_capacity"
}
