resource "aws_ebs_volume" "ebsVolumeNotEncrypted" {
  availability_zone = "us-west-2a"
  size              = 40
}

resource "aws_ebs_volume" "ebsVolumeEncryptedWithNoKms" {
  availability_zone = "us-west-2a"
  size              = 40
  encrypted         = true
}