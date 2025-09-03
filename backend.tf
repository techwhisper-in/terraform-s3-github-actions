# This file defines the static backend configuration
terraform {
  backend "s3" {
    bucket  = "store-statefile-terraform-1999"
    region  = "us-east-2"
    encrypt = true
    # Key will be provided via -backend-config during init
  }
}