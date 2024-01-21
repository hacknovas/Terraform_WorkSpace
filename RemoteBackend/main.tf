provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "statefileBucketBacken" {
  bucket = "learn-statefile-working"
}

resource "aws_s3_bucket_versioning" "versionig_bucket" {
  bucket = aws_s3_bucket.statefileBucketBacken.id
  versioning_configuration {
    status = "Enabled"
  }
}