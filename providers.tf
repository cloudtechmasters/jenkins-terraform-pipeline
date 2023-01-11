terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0be29bafdaad782db"
  instance_type = "t2.micro"
  key_name      ="devops-demo-est"

  tags = {
    Name = "HelloWorld"
  }
}
