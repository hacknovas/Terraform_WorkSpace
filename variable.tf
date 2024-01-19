variable "ami_aps1" {
  description = "ap-south-1 ami value"
  type        = string
  default     = "ami-03f4878755434977f"
}

variable "ami_ue1" {
  description = "us-east-1 ami"
  type        = string
  default     = "ami-0c7217cdde317cfec"
}


output "example_Output" {
  description = "id for bucket creation"
  value       = resource.aws_s3_bucket.test_bucket.id
}
