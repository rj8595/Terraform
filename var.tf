variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  default = "ami-0c57b14cda611edeb"
}

variable "aws_key_pair" {
  default    = "rajendra-keypair"
}

data "aws_vpc" "amp" {
  tags = {
    Name = local.vpc_name
  }
}

data "aws_subnet" "public_subnet" {
  vpc_id                  = data.aws_vpc.amp.id
  cidr_block = local.subnet
}
