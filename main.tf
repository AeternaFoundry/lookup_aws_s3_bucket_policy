data "aws_s3_bucket_policy" "s3_bucket_policy_lookup" {
  for_each = var.s3_bucket_policy_lookup

  bucket = each.value.bucket
  region = each.value.region
}

