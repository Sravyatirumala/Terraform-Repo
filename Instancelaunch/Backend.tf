terraform {
    backend "s3" {
        bucket = "bucketfortfstates1"
        key = "us-east-2"  # bucket path  where tf state file will be locked. we can download and check.
        dynamodb_table = "terraform-state-lock-dynamo"
        region = "us-east-1"
    }
}