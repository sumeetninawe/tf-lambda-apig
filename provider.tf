terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10.0"
    }
  }

}

provider "aws" {
  alias  = "aws_useast1"
  region = "us-east-1"

}
