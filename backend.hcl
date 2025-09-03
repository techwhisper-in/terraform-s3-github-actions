    bucket         = "store-statefile-terraform-1999"
    region         = "us-east-2"
    key            = "${var.BucketName}/terraform.tfstate"
    encrypt = true
