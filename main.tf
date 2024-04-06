provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           =  "ami-0446efa824bdcbb61"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }
}
