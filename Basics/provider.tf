# provider "aws" {
#   alias = "reg1"
#   region = "us-east-1"
# }

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias = "reg2"
  region = "us-east-1"
}