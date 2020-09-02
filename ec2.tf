provider "aws" {
  region = var.region
}
resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"
  tags = {
    Name = "HelloWorld"
  }
}
