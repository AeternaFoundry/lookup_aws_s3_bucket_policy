variable "s3_bucket_policy_lookup" {
  description = <<EOT
Map of s3_bucket_policy_lookup, attributes below
Required:
    - bucket
Optional:
    - region
EOT

  type = map(object({
    bucket = string
    region = optional(string)
  }))
}

