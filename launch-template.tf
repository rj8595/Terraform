data "template_file" "user_data" {
  template = <<EOF
#!/bin/bash -xe
service httpd start
EOF
}


resource "aws_launch_template" "inv-consumer-template" {
  name_prefix            = "inv-consumer-template"
  image_id               = var.AMIS
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0aa9f5033fd7b2940"]
  key_name               = var.aws_key_pair
  ebs_optimized          = true
  instance_initiated_shutdown_behavior = "terminate"
#  instance_market_options {
#  market_type = "spot"
#  }
#   user_data = "${base64encode(data.template_file.user_data.rendered)}"
}

