# main.tf
terraform {
  required_version = "~> 0.12.0"

  backend "remote" {}
}
provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}
resource "aws_s3_bucket" "test" {
  bucket = "test"
  acl = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name = "test"
  }

}
