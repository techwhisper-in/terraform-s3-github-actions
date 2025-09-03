terraform {
  backend "s3" {
    bucket         = "store-statefile-terraform-1999"
    region         = "us-east-2"
    key            = "${var.BucketName}/terraform.tfstate"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.Region
}
