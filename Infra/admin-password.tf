resource "random_password" "admin_password" {
  length  = 16
  special = false
}
