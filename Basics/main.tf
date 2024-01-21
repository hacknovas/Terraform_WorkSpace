
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test_instance1" {
  ami           = var.ami_aps1
  instance_type = "t2.micro"
}

resource "aws_instance" "test_instance2" {
  ami           = var.ami_ue1
  instance_type = "t2.micro"
  provider      = aws.reg2
}

resource "aws_s3_bucket" "test_bucket" {
  bucket              = "withpdbucket-test-pdw"
  object_lock_enabled = true
}

resource "aws_s3_bucket_versioning" "version_bucket_test" {
  bucket = aws_s3_bucket.test_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
