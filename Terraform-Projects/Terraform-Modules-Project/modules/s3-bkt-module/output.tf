output "s3_bucket_prefix" {
    value = aws_s3_bucket.bucket.bucket_prefix
}

output "s3_bucket_id" {
    value = aws_s3_bucket.bucket.id
}
