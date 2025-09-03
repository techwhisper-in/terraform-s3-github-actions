locals {
  tags = {
    Name          = var.BucketName
    env           = var.env
    ApplicationCI = var.ApplicationCI
    region        = var.Region
    EnvType       = var.EnvType
    CreatedFrom   = "Terraform"
  }
}