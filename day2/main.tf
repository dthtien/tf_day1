terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-up-and-running-state-dthtien"
    key            = "workspace-example/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0446efa824bdcbb61"
  instance_type = "t2.micro"
}
