// Check for 'root account and MFA type virtual
// AWS arn for virtual MFA types is 'arn:aws:iam::123456789012:mfa/username'
// Check is performed by regex match for "root" keyword
// MFA check is performed by regex match ":mfa"
// Statement.Condition enables MFA 
resource "aws_iam_user_policy" "rootUserNotContainMfaTypeVirtual" {
  name = "test"
  user = "root"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": { "AWS": "arn:aws:iam::123456789012:/ExampleMFADevice" }, 
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy" "rootUserNotContainMfaTypeHardware" {
  name = "test"
  user = "root"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": { "AWS": "arn:aws:iam::123456789012:root" },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy" "userWithPassNotContainMfaActive" {
  name = "test"
  user = "root"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": { "AWS": "arn:aws:iam::123456789012:root" },
      "Action": "sts:AssumeRole",
      "Condition": { "Bool": { "aws:multifactorAuthPresent": false } }
    }
  ]
}
EOF
}

resource "aws_iam_user_policy" "iamPolicyWithFullAdminControl" {
  name = "test"
  user = "root"

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
