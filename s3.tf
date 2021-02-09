resource "aws_s3_bucket" "demo-example" {
  bucket = "demoexample-1"
  versioning {
    enabled    = true
    mfa_delete = true
  }
}

resource "aws_s3_bucket_policy" "demo-examplePolicy" {
  bucket = "${aws_s3_bucket.demo-example.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "demo-example-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            "arn:aws:iam::##acount_id##:role/##role_name##",
            "arn:aws:iam::##acount_id##:user/##user_name##"
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.demo-example.id}/*"
    }
  ]
}
POLICY
}