resource "aws_s3_bucket" "project_artifacts" {
  bucket_prefix = "cloud-devops-artifacts-"

  tags = {
    Name        = "cloud_devops_artifacts"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "project_artifacts" {
  bucket = aws_s3_bucket.project_artifacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}