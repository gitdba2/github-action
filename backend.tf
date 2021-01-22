
terraform {
  backend "s3" {
    bucket = "todeaorg-terraform-state"
    key    = "dev/github/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
