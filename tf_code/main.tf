provider "aws" {
  region  = "us-east-1"
  profile = "tmc-terraform"

}

resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-20201201"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "Test Bucket"
    Environment = "Dev"
  }
}

