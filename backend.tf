terraform {
  backend s3 {
    bucket         = "ex3-tf-state"
    key            = "VM/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "ex3-tf-state"
    encrypt        = true
  }
}
