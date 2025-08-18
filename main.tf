provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Asset_Owner = "system-administrators"
      System      = "SG_IT"
      Environment = "prod"
    }
  }
}

terraform {
  required_version = ">= 1.12.0"
  required_providers {
    aws = {
      version = "~> 6"
    }
  }
}


resource "aws_s3_bucket" "bucket_test" {
  bucket = "test-backup"
  acl    = "private"

  tags = {
    System      = "SG_IT"
    Asset_Owner = "system-administrators"
    Environment = "prod"
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }


  lifecycle {
    create_before_destroy = true
  }
}

terraform {
  cloud {
    organization = "Silicon-Grid"

    workspaces {
      name = "s3-test-sast"
    }
  }