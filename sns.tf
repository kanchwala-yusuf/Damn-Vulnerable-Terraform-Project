resource "aws_sns_topic" "snsPublicAccess" {
  name   = "terraform-example-queue"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [{
    "Sid":"Queue1_AnonymousAccess_AllActions_WhitelistIP",
    "Effect": "Allow",
    "Principal": { "AWS":"*" },
    "Action": [
      "SNS:*"
    ],
    "Resource": "arn:aws:sns:us-east-2:123456789012:MyTopic"
  }] 
}
EOF
}