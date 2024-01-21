terraform {
  required_providers {
     aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "learn-statefile-working"
    key                = "./terraform.tfstate"
    region         	   = "ap-south-1"
    encrypt        	   = true
    dynamodb_table = "mycomponents_tf_lockid"
  }

}