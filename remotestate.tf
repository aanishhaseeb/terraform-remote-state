provider "aws" {
    region = var.region.0
    profile = "my-profile"
}
resource "aws_vpc" "vpc_main" {
    cidr_block = var.region.1
  
}
output "vpc_id" {
    value = aws_vpc.vpc_main.id
  
}
resource "aws_s3_bucket" "name" {
    bucket = var.region.2
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.name.id
  versioning_configuration {
    status = "Enabled"
  }
}
terraform {
  backend "s3" {
    

  }
}   