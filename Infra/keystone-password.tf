
resource "random_password" "os_admin_password" {
  length  = 16
  special = false
}
