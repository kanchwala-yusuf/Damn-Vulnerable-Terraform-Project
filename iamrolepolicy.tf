resource "aws_iam_role_policy" "iamRolePolicyWithFullAdminCntrl" {
  name = "test"
  role = "test"

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