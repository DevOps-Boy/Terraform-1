terraform {
required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~> 4.16"
}
}
	required_version = ">=1.2.0"
}

provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "aws_ec2_test" {
	count = 4
	ami = "ami-0376ec8eacdf70aae"
	instance_type = "t2.micro"
	tags = {
	Name = "TerraformTestServer- ${count.index}"
}
}

