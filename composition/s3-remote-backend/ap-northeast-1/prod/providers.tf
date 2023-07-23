########################################
# Provider to connect to AWS
########################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = "~> 3.5.1"
  }

  # backend "s3" {} # use local backend to first create S3 bucket to store .tfstate later
}

provider "aws" {
  region  = var.region
  profile = var.profile_name
}
