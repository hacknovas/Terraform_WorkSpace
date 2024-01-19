provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test_example" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"
}