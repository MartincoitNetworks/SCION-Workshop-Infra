output "Dallas-Keystone-Access-IPv4" {
  description = "Dallas Keystone Access IPv4"
  value       = module.dallas-keystone.metal_device.access_public_ipv4
}

#output "Frankfurt" {
#  description = "Dallas"
#  value       = metal_device.scion-router-frankfurt.access_public_ipv4
#}

output "KeystoneAdminPassword" {
  value        = random_password.keystone_admin_password.result
  description  = "Keystone Admin Password"
  sensitive    = true
}

output "KeystoneDemoPassword" {
  value        = random_password.keystone_demo_password.result
  description  = "Keystone Demo Password"
  sensitive    = true
}
