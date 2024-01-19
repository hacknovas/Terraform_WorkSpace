resource "aws_instance" "test_instance" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  provider = aws.reg1
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "work-withpdbucket-test"
  object_lock_enabled = true 
  provider = aws.reg2
}