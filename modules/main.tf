provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test4Module" {
    ami = var.ami_id
    instance_type = "t2.micro"
}



# at main directory
# provider "aws" {
#   region = "ap-south-1"
# }

# module "mymodule" {
#     source = "./modules"
#     # ami_id = "ami-03f487875543497g"
# }