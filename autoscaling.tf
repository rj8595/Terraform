resource "aws_autoscaling_group" "INV-CONSUMER" {
  name                      = "INV-CONSUMER"
  vpc_zone_identifier       = [data.aws_subnet.public_subnet.id]
  launch_template = {           
    id      = "${aws_launch_template.inv-consumer-template.id}"
    version = "$$Latest"
  }
  min_size                  = 1
  max_size                  = 1
  desired_capacity          = 1
  health_check_grace_period = 300
  health_check_type         = "EC2"
  force_delete              = true

  tag {
    key                 = "Name"
    value               = "INV-CONSUMER"
    propagate_at_launch = true
  }
}

