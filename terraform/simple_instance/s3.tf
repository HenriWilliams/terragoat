provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
  }
}


resource "aws_s3_bucket_versioning" "dockingbay" {
  bucket = aws_s3_bucket.dockingbay.id

  versioning_configuration {
    status = "Enabled"
  }
}
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "dockingbay" {
  bucket = aws_s3_bucket.dockingbay.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
    }
  }
}
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "a95498dc9df5f1dd7ff9b500bc0e1a452f32e3cd"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2023-06-27 13:53:43"
    git_last_modified_by = "93335919+HenriWilliams@users.noreply.github.com"
    git_modifiers        = "93335919+HenriWilliams"
    git_org              = "HenriWilliams"
    git_repo             = "terragoat"
    yor_name             = "dockingbay"
    yor_trace            = "9c275443-f158-4ee2-9d46-2bf7c3f972fc"
  }
}
