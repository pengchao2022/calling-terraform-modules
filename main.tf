provider "aws" {
  region = "us-east-1"
  
}

# call a module
module "s3-bucket" {
  source = "git::https://github.com/pengchao2022/aws-terraform-modules.git//modules/s3?ref=s3-1.3"
  bucket_name = "maxwell-s3-bucket-20260607" # This is a globally unique identifier for AWS S3 services
  # enable s3 static website
  enable_website = true
  tags = {
    Name = "R-D-bucket" # This is for human reading show in aws console do not use space
    Demo = "For calling module demo"
    
  }
  
}