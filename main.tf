provider "aws" {
  region     = "us-east-1"
}

resource "aws_ec2_fleet" "scalr" {
  launch_template_config {
    launch_template_specification {
      launch_template_id = "lt-0052cb2ad0565b97c"
      version            = "1"
    }
  }

  target_capacity_specification {
    default_target_capacity_type = "spot"
    total_target_capacity        = 2
  }
}
