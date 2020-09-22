resource "aws_ecr_repository" "scanOnPushDisabled" {
  name                 = "test"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "scanOnPushNoSet" {
  name                 = "test"
  image_tag_mutability = "MUTABLE"
}