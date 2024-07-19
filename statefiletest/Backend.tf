terraform {
    backend "s3" {
        bucket = "tfstatefile-list"
        key = "tfstatefile"   #this is just s3 buket path name
        dynamodb_table = "terraform-state-lock-dynamo"
        region = "us-east-2"
    }
}
