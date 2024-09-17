terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3"{
    bucket = "rajesh-remote-state"
    key = "for-each-terraform"
    region = "us-east-1"
    dynamodb_table = "rajesh-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" #as
}