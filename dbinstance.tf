resource "aws_db_instance" "rdsBackupDisbaled" {
  allocated_storage       = 20
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "5.7"
  instance_class          = "db.t2.micro"
  name                    = "mydb"
  backup_retention_period = 0
}

resource "aws_db_instance" "rdsIamAuthDisabled" {
  allocated_storage                   = 20
  storage_type                        = "gp2"
  engine                              = "mysql"
  engine_version                      = "5.7"
  instance_class                      = "db.t2.micro"
  name                                = "mydb"
  backup_retention_period             = 90
  iam_database_authentication_enabled = false
}