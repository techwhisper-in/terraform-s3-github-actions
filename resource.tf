# S3 Resource creation
# Count is skip the condition
resource "aws_s3_bucket" "s3" {
  count = var.create_bucket == "true" ? 1 : 0
  bucket = var.BucketName
  tags = merge(var.custom_tags, local.tags)
}

# Version enable for s3 resource
resource "aws_s3_bucket_versioning" "versioning" {
  count = var.enable_versioning == "true" ? 1 : 0
  bucket = var.BucketName
  versioning_configuration {
    status = "Enabled"
  }
  depends_on = [ aws_s3_bucket.s3 ]
}

#s3 object ownership controls
resource "aws_s3_bucket_ownership_controls" "ownershipcontrol" {
  count = var.object_ownership == "BucketOwnerEnforced" ? 0 : 1
  bucket = var.BucketName
  rule {
    object_ownership = var.object_ownership
  }
  depends_on = [ aws_s3_bucket.s3 ]
}