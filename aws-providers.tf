#1 Configure the AWS Provider
provider "aws"{
      region  = var.region
}


#2 Create a VPC
resource "aws_vpc" "thiyagu_tf_vpc" {
  cidr_block = var.cidr_vpc
  instance_tenancy = "default"
  tags = {
    Name = "thiyagu_tf_vpc"

  }
}

#3 AWS - SUBNET CREATION
resource "aws_subnet" "coda_tf_subnet" {
  vpc_id     = aws_vpc.thiyagu_tf_vpc.id
  cidr_block = var.cidr_subnet
  tags = {
    Name = "coda_tf_subnet"
  }
}

#4 INSTANCE CREATION BASED ON VPC SUBNET IDS
resource "aws_instance" "NEW_INSTANCE"{
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.coda_tf_subnet.id
  tags = {
     "Environment" = var.environment_tag
  }
}