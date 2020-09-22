resource "aws_vpc" "sample_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_flow_log" "sample_vpc_flow_log" {
  iam_role_arn    = "arn:aws:iam::555555555555:role/role-example"
  log_destination = "arn:aws:s3:::examplebucket"
  traffic_type    = "ALL"
  vpc_id          = "aws_vpc.sample_vpc_other"
}
