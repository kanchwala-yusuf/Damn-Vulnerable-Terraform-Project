resource "aws_rds_cluster" "noStorageEncryption" {
  master_password = "barbarbarbar"
  master_username = "foo"
}

resource "aws_rds_cluster" "storageEncryptedNoKms" {
  master_password   = "barbarbarbar"
  master_username   = "foo"
  storage_encrypted = true
}

resource "aws_rds_cluster" "storageEncryptedFalse" {
  master_password   = "barbarbarbar"
  master_username   = "foo"
  storage_encrypted = false
}


