provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test_instance" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "test-my-bucket-mahi"
  object_lock_enabled = true 
}