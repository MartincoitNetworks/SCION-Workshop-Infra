resource "random_password" "admin_password" {
  length  = 16
  special = false
}

resource "random_password" "demo_password" {
  length  = 16 
  special = false
}

resource "random_password" "keystone_dbpass" {
  length  = 16
  special = false
}

resource "random_password" "rabbit_pass" {
  length  = 16
  special = false
}
