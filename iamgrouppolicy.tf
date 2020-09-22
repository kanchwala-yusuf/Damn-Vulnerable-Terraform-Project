resource "aws_iam_group_policy" "iamGrpPolicyWithFullAdminCntrl" {
  name   = "test"
  group  = "test"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}