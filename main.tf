terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.49.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = "10.1.0.0/16"
  private_subnet_cidr = "10.1.200.0/24"
  public_subnet_cidr  = "10.1.100.0/24"

}

module "web" {
  source            = "./modules/ec2"
  ami               = "ami-0dc2d3e4c0f9ebd18"
  instance_type     = "t3.micro"
  availability_zone = "us-east-1a"
}