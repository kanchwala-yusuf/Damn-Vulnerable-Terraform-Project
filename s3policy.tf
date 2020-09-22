resource "aws_s3_bucket_policy" "allowActionsFromAllPrincipals" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowDeleteActionFromAllPrncpls" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:Delete*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowGetActionFromAllPrncpls" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:Get*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowListActionFromAllPrncpls" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:List*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowPutActionFromAllPrncpls" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:Put*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowRestoreActionFromAllPrncpls" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:Restore*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "checkBucketPolicylogging" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "AWSCloudTrailAclCheck20150319",
      "Effect": "Allow",
      "Principal": {"Service": "cloudtrail.amazonaws.com"},
      "Action": "s3:GetBucketAcl",
      "Resource": "arn:aws:s3:::myBucketName"
    }
  ]
}
POLICY
}
