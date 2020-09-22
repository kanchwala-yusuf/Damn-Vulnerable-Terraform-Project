resource "aws_kinesis_firehose_delivery_stream" "kinesisSseEnabled" {
  name        = "kinesisSseEnabled"
  destination = "s3"

  server_side_encryption {
    enabled = true
  }

  tags = {
    Name = "kinesisSseEnabled"
  }
}

resource "aws_kinesis_firehose_delivery_stream" "kinesisSseNotConfigured" {
  name        = "terraform-kinesis-firehose-test-stream"
  destination = "s3"
}