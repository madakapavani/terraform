terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket         = "96s-remote-state"
    key            = "expense-backend-infra"
    region         = "us-east-1"
    dynamodb_table = "96s-remote-state"
  }
}

provider "aws" {
  region = "us-east-1"
}


