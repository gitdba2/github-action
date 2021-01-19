## =============================================================================
#  Configure the AWS Provider                                                  #
## =============================================================================
terraform {
  required_version = "= 0.14.4"

  required_providers {
    aws = "~> 3.24"
  }
}

provider "aws" {
  region = "us-east-1"
}


