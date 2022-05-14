#output "Dallas" {
#  description = "Dallas"
#  value       = metal_device.scion-router-dallas.access_public_ipv4
#}
#output "Frankfurt" {
#  description = "Dallas"
#  value       = metal_device.scion-router-frankfurt.access_public_ipv4
#}

output "keystone_os_admin_password" {
  value        = ""
  description  = "Keystone OS Admin Password"
}
