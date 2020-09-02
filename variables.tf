variable "region"{
	default = "us-east-1"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "190.160.0.0/16"
}

variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "190.160.1.0/24"
}

variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default     = "ami-0bcc094591f354be2"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default     = "t2.micro"
}

variable "environment_tag" {
  description = "Environment"
  default     = "Production"
}