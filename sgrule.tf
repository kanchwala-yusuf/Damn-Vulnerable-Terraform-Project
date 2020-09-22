resource "aws_security_group_rule" "acme_web_rule_wide_open" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_wide_open.id
}

resource "aws_security_group" "acme_web_rule_wide_open" {
  name        = "acme_web_rule_wide_open"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_wide_open"
  }
}

resource "aws_security_group_rule" "acme_web_rule_unrestricted" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_unrestricted.id
}

resource "aws_security_group" "acme_web_rule_unrestricted" {
  name        = "acme_web_rule_unrestricted"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_unrestricted"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_ssh.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_ssh" {
  name        = "acme_web_rule_port_open_to_internet_ssh"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_ssh"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_http.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_http" {
  name        = "acme_web_rule_port_open_to_internet_http"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_http"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_135" {
  type              = "ingress"
  from_port         = 135
  to_port           = 135
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_135.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_135" {
  name        = "acme_web_rule_port_open_to_internet_135"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_135"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_138" {
  type              = "ingress"
  from_port         = 138
  to_port           = 138
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_138.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_138" {
  name        = "acme_web_rule_port_open_to_internet_138"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_138"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_138_udp" {
  type              = "ingress"
  from_port         = 138
  to_port           = 138
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_138_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_138_udp" {
  name        = "acme_web_rule_port_open_to_internet_138_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_138_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_https.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_https" {
  name        = "acme_web_rule_port_open_to_internet_https"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_https"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_rdp" {
  type              = "ingress"
  from_port         = 3389
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_rdp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_rdp" {
  name        = "acme_web_rule_port_open_to_internet_rdp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_rdp"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_137" {
  type              = "ingress"
  from_port         = 137
  to_port           = 137
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_137.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_137" {
  name        = "acme_web_rule_port_open_to_internet_137"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_137"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_137_udp" {
  type              = "ingress"
  from_port         = 137
  to_port           = 137
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_137_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_137_udp" {
  name        = "acme_web_rule_port_open_to_internet_137_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_137_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_139" {
  type              = "ingress"
  from_port         = 139
  to_port           = 139
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_139.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_139" {
  name        = "acme_web_rule_port_open_to_internet_139"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_139"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_139_udp" {
  type              = "ingress"
  from_port         = 139
  to_port           = 139
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_139_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_139_udp" {
  name        = "acme_web_rule_port_open_to_internet_139_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_139_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_161" {
  type              = "ingress"
  from_port         = 161
  to_port           = 161
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_161.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_161" {
  name        = "acme_web_rule_port_open_to_internet_161"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_161"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_389" {
  type              = "ingress"
  from_port         = 389
  to_port           = 389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_389.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_389" {
  name        = "acme_web_rule_port_open_to_internet_389"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_389"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_636" {
  type              = "ingress"
  from_port         = 636
  to_port           = 636
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_636.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_636" {
  name        = "acme_web_rule_port_open_to_internet_636"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_636"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_1433" {
  type              = "ingress"
  from_port         = 1433
  to_port           = 1433
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_1433.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_1433" {
  name        = "acme_web_rule_port_open_to_internet_1433"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_1433"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_1434" {
  type              = "ingress"
  from_port         = 1434
  to_port           = 1434
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_1434.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_1434" {
  name        = "acme_web_rule_port_open_to_internet_1434"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_1434"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_1434_udp" {
  type              = "ingress"
  from_port         = 1434
  to_port           = 1434
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_1434_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_1434_udp" {
  name        = "acme_web_rule_port_open_to_internet_1434_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_1434_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_1521" {
  type              = "ingress"
  from_port         = 1521
  to_port           = 1521
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_1521.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_1521" {
  name        = "acme_web_rule_port_open_to_internet_1521"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_1521"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_2382" {
  type              = "ingress"
  from_port         = 2382
  to_port           = 2382
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_2382.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_2382" {
  name        = "acme_web_rule_port_open_to_internet_2382"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_2382"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_2383" {
  type              = "ingress"
  from_port         = 2383
  to_port           = 2383
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_2383.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_2383" {
  name        = "acme_web_rule_port_open_to_internet_2383"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_2383"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_2483" {
  type              = "ingress"
  from_port         = 2483
  to_port           = 2483
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_2483.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_2483" {
  name        = "acme_web_rule_port_open_to_internet_2483"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_2483"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_2484" {
  type              = "ingress"
  from_port         = 2484
  to_port           = 2484
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_2484.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_2484" {
  name        = "acme_web_rule_port_open_to_internet_2484"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_2484"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_2484_udp" {
  type              = "ingress"
  from_port         = 2484
  to_port           = 2484
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_2484_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_2484_udp" {
  name        = "acme_web_rule_port_open_to_internet_2484_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_2484_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_3000" {
  type              = "ingress"
  from_port         = 3000
  to_port           = 3000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_3000.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_3000" {
  name        = "acme_web_rule_port_open_to_internet_3000"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_3000"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_3306" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_3306.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_3306" {
  name        = "acme_web_rule_port_open_to_internet_3306"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_3306"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_3020" {
  type              = "ingress"
  from_port         = 3020
  to_port           = 3020
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_3020.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_3020" {
  name        = "acme_web_rule_port_open_to_internet_3020"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_3020"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_4505" {
  type              = "ingress"
  from_port         = 4505
  to_port           = 4505
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_4505.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_4505" {
  name        = "acme_web_rule_port_open_to_internet_4505"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_4505"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_4506" {
  type              = "ingress"
  from_port         = 4506
  to_port           = 4506
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_4506.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_4506" {
  name        = "acme_web_rule_port_open_to_internet_4506"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_4506"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_5432" {
  type              = "ingress"
  from_port         = 5432
  to_port           = 5432
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_5432.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_5432" {
  name        = "acme_web_rule_port_open_to_internet_5432"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_5432"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_6379" {
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_6379.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_6379" {
  name        = "acme_web_rule_port_open_to_internet_6379"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_6379"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_7000" {
  type              = "ingress"
  from_port         = 7000
  to_port           = 7000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_7000.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_7000" {
  name        = "acme_web_rule_port_open_to_internet_7000"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_7000"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_7001" {
  type              = "ingress"
  from_port         = 7001
  to_port           = 7001
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_7001.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_7001" {
  name        = "acme_web_rule_port_open_to_internet_7001"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_7001"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_7199" {
  type              = "ingress"
  from_port         = 7199
  to_port           = 7199
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_7199.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_7199" {
  name        = "acme_web_rule_port_open_to_internet_7199"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_7199"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_8000" {
  type              = "ingress"
  from_port         = 8000
  to_port           = 8000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_8000.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_8000" {
  name        = "acme_web_rule_port_open_to_internet_8000"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_8000"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_8080" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_8080.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_8080" {
  name        = "acme_web_rule_port_open_to_internet_8080"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_8080"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_8140" {
  type              = "ingress"
  from_port         = 8140
  to_port           = 8140
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_8140.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_8140" {
  name        = "acme_web_rule_port_open_to_internet_8140"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_8140"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_8888" {
  type              = "ingress"
  from_port         = 8888
  to_port           = 8888
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_8888.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_8888" {
  name        = "acme_web_rule_port_open_to_internet_8888"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_8888"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_9000" {
  type              = "ingress"
  from_port         = 9000
  to_port           = 9000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_9000.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_9000" {
  name        = "acme_web_rule_port_open_to_internet_9000"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_9000"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_9090" {
  type              = "ingress"
  from_port         = 9090
  to_port           = 9090
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_9090.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_9090" {
  name        = "acme_web_rule_port_open_to_internet_9090"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_9090"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_9042" {
  type              = "ingress"
  from_port         = 9042
  to_port           = 9042
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_9042.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_9042" {
  name        = "acme_web_rule_port_open_to_internet_9042"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_9042"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_9160" {
  type              = "ingress"
  from_port         = 9160
  to_port           = 9160
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_9160.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_9160" {
  name        = "acme_web_rule_port_open_to_internet_9160"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_9160"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_9200" {
  type              = "ingress"
  from_port         = 9200
  to_port           = 9200
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_9200.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_9200" {
  name        = "acme_web_rule_port_open_to_internet_9200"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_9200"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_9300" {
  type              = "ingress"
  from_port         = 9300
  to_port           = 9300
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_9300.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_9300" {
  name        = "acme_web_rule_port_open_to_internet_9300"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_9300"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_11211" {
  type              = "ingress"
  from_port         = 11211
  to_port           = 11211
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_11211.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_11211" {
  name        = "acme_web_rule_port_open_to_internet_11211"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_11211"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_11214" {
  type              = "ingress"
  from_port         = 11214
  to_port           = 11214
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_11214.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_11214" {
  name        = "acme_web_rule_port_open_to_internet_11214"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_11214"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_11214_udp" {
  type              = "ingress"
  from_port         = 11214
  to_port           = 11214
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_11214_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_11214_udp" {
  name        = "acme_web_rule_port_open_to_internet_11214_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_11214_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_11215" {
  type              = "ingress"
  from_port         = 11215
  to_port           = 11215
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_11215.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_11215" {
  name        = "acme_web_rule_port_open_to_internet_11215"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_11215"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_11215_udp" {
  type              = "ingress"
  from_port         = 11215
  to_port           = 11215
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_11215_udp.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_11215_udp" {
  name        = "acme_web_rule_port_open_to_internet_11215_udp"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_11215_udp"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_27017" {
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_27017.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_27017" {
  name        = "acme_web_rule_port_open_to_internet_27017"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_27017"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_27018" {
  type              = "ingress"
  from_port         = 27018
  to_port           = 27018
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_27018.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_27018" {
  name        = "acme_web_rule_port_open_to_internet_27018"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_27018"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_61620" {
  type              = "ingress"
  from_port         = 61620
  to_port           = 61620
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_61620.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_61620" {
  name        = "acme_web_rule_port_open_to_internet_61620"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_61620"
  }
}
resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_61621" {
  type              = "ingress"
  from_port         = 61621
  to_port           = 61621
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_61621.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_61621" {
  name        = "acme_web_rule_port_open_to_internet_61621"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_61621"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_23" {
  type              = "ingress"
  from_port         = 23
  to_port           = 23
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_23.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_23" {
  name        = "acme_web_rule_port_open_to_internet_23"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_23"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_25" {
  type              = "ingress"
  from_port         = 25
  to_port           = 25
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_25.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_25" {
  name        = "acme_web_rule_port_open_to_internet_25"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_25"
  }
}

resource "aws_security_group_rule" "acme_web_rule_port_open_to_internet_445" {
  type              = "ingress"
  from_port         = 445
  to_port           = 445
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0", "172.217.0.0/24"]
  security_group_id = aws_security_group.acme_web_rule_port_open_to_internet_445.id
}

resource "aws_security_group" "acme_web_rule_port_open_to_internet_445" {
  name        = "acme_web_rule_port_open_to_internet_445"
  description = "Used in the terraform"
  vpc_id      = "some_dummy_vpc"
  tags = {
    Name = "acme_web_rule_port_open_to_internet_445"
  }
}