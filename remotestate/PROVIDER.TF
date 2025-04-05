terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "s3" {
    bucket = "saiteja-remote-state"
    key    = "new-state-demo"
    region = "us-east-1"
    dynamodb_table = "practice-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

