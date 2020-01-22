provider "aws" {
  region     = "us-east-1"
}

resource "aws_ec2_fleet" "scalr" {
  launch_template_config {
    launch_template_specification {
      launch_template_id = var.launch_template_id
      version            = var.launch_template_version
    }
  }

  target_capacity_specification {
    default_target_capacity_type = var.capacity_type
    total_target_capacity        = var.total_capacity
  }
}
