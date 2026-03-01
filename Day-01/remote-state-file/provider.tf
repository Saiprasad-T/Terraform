terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
 backend "s3" {
    bucket  = "aws-state-file-location" # Replace with your unique bucket name
    key     = "remote-state.tfstate"
    region  = "us-east-1"
    encrypt = true
    use_lockfile   = true
  }
}
provider "aws" {
  region = "us-east-1"
}