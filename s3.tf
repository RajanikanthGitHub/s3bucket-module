resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "my-s3-ucket" {
  bucket = "${var.PROUECT_NAME}-bucket"
  acl    = var.ACL

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }

  lifecycle_rule {
    id      = "expire"
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }

    expiration {
      days = 90
    }

  }
  tags = merge (
  {
    Name = "${var.PROUECT_NAME}"
    Project = "Demo-Project"
    Environment = "${var.ENVIRONMENT}"
    ManagedBy = "Terraform"
  }, var.tags
  )
}