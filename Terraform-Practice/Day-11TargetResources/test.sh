resources=(
  "aws_s3_bucket.S3bucketss"
  "aws_instance.Ec2"
)

for resource in "${resources[@]}"; do
  targets+=" -target=$resource"
done

terraform apply $targets
