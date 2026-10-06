terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "jenkins_vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "jenkins-terraform-vpc"
  }
}
