terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.62.0"
    }
  }

  # backend "s3" {
  #   bucket  = "terraform-iac-2026"
  #   region  = "eu-north-1"
  #   key     = "terraform.tfstate"
  #   encrypt = true
  # }
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.state_bucket
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [aws_s3_bucket.s3_bucket]
}
