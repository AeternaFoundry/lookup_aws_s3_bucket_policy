output "s3_bucket_policy_lookup_id" {
  description = "Map of id values across all s3_bucket_policy_lookup, keyed the same as var.s3_bucket_policy_lookup"
  value       = { for k, v in data.aws_s3_bucket_policy.s3_bucket_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_policy_lookup_bucket" {
  description = "Map of bucket values across all s3_bucket_policy_lookup, keyed the same as var.s3_bucket_policy_lookup"
  value       = { for k, v in data.aws_s3_bucket_policy.s3_bucket_policy_lookup : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_policy_lookup_policy" {
  description = "Map of policy values across all s3_bucket_policy_lookup, keyed the same as var.s3_bucket_policy_lookup"
  value       = { for k, v in data.aws_s3_bucket_policy.s3_bucket_policy_lookup : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "s3_bucket_policy_lookup_region" {
  description = "Map of region values across all s3_bucket_policy_lookup, keyed the same as var.s3_bucket_policy_lookup"
  value       = { for k, v in data.aws_s3_bucket_policy.s3_bucket_policy_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

