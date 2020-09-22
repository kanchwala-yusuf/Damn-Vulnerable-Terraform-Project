resource "aws_kms_key" "kmsKeyDisabled" {
  description = "KMS key 2"
  is_enabled  = false
}

resource "aws_kms_key" "kmsKeyRotationDisabled" {
  description         = "KMS key 2"
  is_enabled          = true
  enable_key_rotation = false
}

resource "aws_kms_key" "kmsKeyNoDeletionWindow" {
  description         = "KMS key 2"
  is_enabled          = true
  enable_key_rotation = true
}


resource "aws_kms_key" "kmsKeyExposedPolicy" {
  description = "KMS key 2"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "kms:*"
      ],
      "Principal": { "AWS": "*" },
      "Resource": "*"
    }
  ]
}
EOF
}