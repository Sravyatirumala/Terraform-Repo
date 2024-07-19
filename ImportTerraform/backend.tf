terraform {
  backend "s3" {
    bucket = "bucketfortfstates1"
    key    = "testkey"
    region = "us-east-1"
  }
}

