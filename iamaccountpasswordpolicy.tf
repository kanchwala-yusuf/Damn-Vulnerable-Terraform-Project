resource "aws_iam_account_password_policy" "passwordRequireMinLength" {
  minimum_password_length = 5
}

resource "aws_iam_account_password_policy" "passwordRequireMinLength14" {
  minimum_password_length = 14
}

resource "aws_iam_account_password_policy" "passwordRequireLowerCase" {
  require_lowercase_characters = false
}

resource "aws_iam_account_password_policy" "passwordRequireNumber" {
  require_numbers = false
}

resource "aws_iam_account_password_policy" "passwordRequireUpperCase" {
  require_uppercase_characters = false
}

resource "aws_iam_account_password_policy" "passwordRequireSymbol" {
  require_symbols = false
}

resource "aws_iam_account_password_policy" "passwordRotateEvery90Days" {
  max_password_age = 91
}

resource "aws_iam_account_password_policy" "passwordResuseNotAllowed" {
  password_reuse_prevention = 1
}

