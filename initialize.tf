provider "aws" {
  region = "eu-west-2"
  profile = "iammbari"
  
  default_tags {
      tags = {
        Project = var.project
        Author = "MoJ-TechOps"
      }
  }
}

terraform {
  required_version    = "~> 1.0.0"

  required_providers {
    aws = {
        version       = "3.54.0"
        source        = "hashicorp/aws"
    }
  }
     backend "s3" {
       encrypt         = "true"
       bucket          = "tf-bucket-s3-v1"
       dynamodb_table = "tf-state-lock-dynamo"
       key             = "path/path/terraform-tfstate"
       region          = "eu-west-2"
  }
}