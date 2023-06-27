provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "8d3ca8e49fd25f257e19215fb0a703cd5c588ea4"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2023-06-27 13:52:47"
    git_last_modified_by = "93335919+HenriWilliams@users.noreply.github.com"
    git_modifiers        = "93335919+HenriWilliams"
    git_org              = "HenriWilliams"
    git_repo             = "terragoat"
    yor_name             = "dockingbay"
    yor_trace            = "09969620-c665-4668-b9ef-5a839b144d63"
  }
}
