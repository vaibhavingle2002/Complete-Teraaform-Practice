resource "aws_s3_bucket" "s3-1" {
  bucket = "vaibhavsbucket-ohio"
}

resource "aws_s3_bucket" "s3-2" {
  bucket = "mumabibucket-vaibhav"
  provider = aws.mumbai
}
resource "aws_s3_bucket" "s3-3" {
  bucket = "vaibhavs-sinagapore"
  provider = aws.singapore
}