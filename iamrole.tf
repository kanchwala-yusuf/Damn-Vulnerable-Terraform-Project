resource "aws_iam_role" "iamRoleWithFullAdminCntrl" {
  name = "test"

  assume_role_policy = <<EOF
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

  tags = {
    tag-key = "tag-value"
  }
}