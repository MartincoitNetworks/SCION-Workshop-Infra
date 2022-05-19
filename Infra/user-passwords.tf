resource "random_password" "keystone_admin_password" {
  length  = 16
  special = false
}

resource "random_password" "keystone_demo_password" {
  length  = 16 
  special = false
}
