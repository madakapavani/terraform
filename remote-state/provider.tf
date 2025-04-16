terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.84.0"
    }
  }

    backend "s3" {
      bucket = "96s-remote-state"
      key = "expense-backend-infra"
      region = "us-east-1"
      dynamodb_table = "82s-state-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}


