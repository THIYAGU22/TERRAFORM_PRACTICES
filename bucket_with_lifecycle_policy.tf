provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket-creation"{
  bucket = "bucket-thiyagu-coda"
  acl = "private"
  lifecycle_rule{
    id = "prod"
    enabled = true

    prefix = "prod/"

    tags = {
      "rule"      = "prod"
      "autoclean" = "true"
    } S
    expiration{
        days = 30
    }
  }
}

resource "aws_s3_bucket_object" "lifecycle-bucket"{
  bucket = "${aws_s3_bucket.bucket-creation.id}"
  acl = "private"
  key = "prod/"
  source = "/dev/null"
}

