provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s3" {
  bucket = "${var.s3_bucket_prefix}-terraformcloud"
  versioning {
    enabled    = true
    mfa_delete = true
  }
}

variable "s3_bucket_prefix" {
  default = "sample_prefix_test20"
}

resource "aws_s3_bucket_policy" "demo-s3Policy" {
  bucket = "${aws_s3_bucket.demo-s3.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "demo-s3-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <aws_policy_role_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.demo-s3.id}/*"
    }
  ]
}
POLICY
}