resource "aws_ecr_repository_policy" "ecrRepoIsPublic" {
  repository = "some-Repo-Name"

  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "new policy",
            "Effect": "Allow",
            "Principal": "*",
            "Action": ["*"]
        }
    ]
}
EOF
}