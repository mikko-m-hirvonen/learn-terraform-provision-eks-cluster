terraform {
  backend s3 {
    # Replace this with your bucket name!
    bucket         = "ex3-tf-state"
    key            = "VM/terraform.tfstate"
    region         = "us-east-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "ex3-tf-state"
    encrypt        = true
  }
}
