terraform {
  backend "s3" {
    bucket = "terrafor-bucket-test"
    key    = "terrform.tfstate"
    region = "us-east-1"
    dynamodb_table = "test-terraform"
  }
}
