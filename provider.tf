terraform {
  # required_version = ">= 1.3.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }

  }
}



provider "aws" {
  region = "us-east-1"
  #profile = "default"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "jjtech-statefile-backend-1234"
    key            = "jjtech1/terraform.tfstate"
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "jjtech-dynamodb"
  }
 }




