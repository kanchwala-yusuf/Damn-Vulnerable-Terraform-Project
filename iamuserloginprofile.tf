resource "aws_iam_user_login_profile" "noPasswordPolicyEnabled" {
  user                    = "root"
  pgp_key                 = "keybase:some_person_that_exists"
  password_length         = 20
  password_reset_required = false
}