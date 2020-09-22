resource "aws_launch_configuration" "blockUnEcryted" {
  name                 = "launch-configuration"
  image_id             = "ami-88888888"
  instance_type        = "t2.micro"
  iam_instance_profile = "ECS-instance-profile"
  user_data_base64     = "TFMwdExTMUNSTU9WS1BZUkNGVUxSWTU0NFJUTTk3RUNLVjFRWlA2UjVDNExPNE0yRU9IMjdUVjhGUTUwUzdCM0MyUlhE"

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = true
    encrypted             = false
  }

  ebs_block_device {
    device_name = "ebs-device"
    encrypted   = false
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "hard_coded_url" {
  name                 = "launch-configuration-hard-coded-url"
  image_id             = "ami-88888888"
  instance_type        = "t2.micro"
  iam_instance_profile = "ECS-instance-profile"
  user_data_base64     = "aHR0cHM6Ly9zZWN1cmUud2Vic2l0ZS5jb20="

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = true
    encrypted             = true
  }

  ebs_block_device {
    device_name = "ebs-device"
    encrypted   = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "hard_coded_shell_script" {
  name                 = "launch-configuration-hard-coded-url"
  image_id             = "ami-88888888"
  instance_type        = "t2.micro"
  iam_instance_profile = "ECS-instance-profile"
  user_data_base64     = "IyEvYmluL2Jhc2gNCg0KdXNlcm5hbWU9ImhlbGxvIg0KcGFzc3dvcmQ9IndvcmxkIg0KLi9sb2dpbiAkdXNlcm5hbWUgJHBhc3N3b3Jk"

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = true
    encrypted             = true
  }

  ebs_block_device {
    device_name = "ebs-device"
    encrypted   = true
  }

  lifecycle {
    create_before_destroy = true
  }
}