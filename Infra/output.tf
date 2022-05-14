output "Dallas-Keystone-Access-IPv4" {
  description = "Dallas Keystone Access IPv4"
  value       = module.dallas-keystone.metal_device.access_public_ipv4
}

#output "Frankfurt" {
#  description = "Dallas"
#  value       = metal_device.scion-router-frankfurt.access_public_ipv4
#}

output "AdminPassword" {
  value        = random_password.admin_password.result
  description  = "Keystone OS Admin Password"
  sensitive    = true
}
