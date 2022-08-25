###### After firstly applying this Terraform file tfstate file will be empty, in-order to continue local development, the local tfstate file needs to be re-initated (terraform init) 
# and filled with current data,
# so when provisioning new resources terraform will recognize resources provisioned in this file because "right now" (after first running it - at that point in time) 

# steps to do 

# 1 - Comment out lines 8-15 (include both 8 and 15)
# 2 - Un-comment lines 18-25 (include both 18 and 25) 
# 3 - run terraform init. and continue work in main repo.

terraform { 
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }  
}

# 
# terraform { 
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }  
# }

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "Alon-Devops-Bucket"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
