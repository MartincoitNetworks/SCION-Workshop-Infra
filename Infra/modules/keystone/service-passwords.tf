resource "random_password" "keystone_dbpass" {
  length  = 16
  special = false
}

resource "random_password" "rabbit_password" {
  length  = 16
  special = false
}
