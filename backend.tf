terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "backend-projeto-final"
    key = "terraform.tfstate"
  }
}
