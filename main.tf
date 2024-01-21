provider "aws" {
  region = "ap-south-1"
}

variable "ami_type" {
  default = ""
}

variable "instance_type" {
  default = ""
}

resource "aws_instance" "workspace-test" {
    ami= var.ami_type
    instance_type = var.instance_type
}
