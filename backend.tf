terraform {
  backend "s3" {
    bucket = "yemistatefile"
    key    = "statefile"
    region = "eu-west-1"

  }
}