terraform {
  backend "s3" {
    bucket         = "terraform-state-dhee"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
