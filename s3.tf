resource "aws_s3_bucket" "my-s3-ucket" {
  bucket = "${var.PROUECT_NAME}-bucket"
  acl    = var.ACL

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = var.SSE_ALGORITHM
        }
    }
  }
}