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