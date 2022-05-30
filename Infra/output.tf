output "Dallas-Access-IPv4" {
  description = "Dallas Access IPv4"
  value       = module.dallas-equinix.metal_device.access_public_ipv4
}

output "Amsterdam-Access-IPv4" {
  description = "Amsterdam Access IPv4"
  value       = module.amsterdam-equinix.metal_device.access_public_ipv4
}

output "Seoul-Access-IPv4" {
  description = "Seoul Access IPv4"
  value       = module.seoul-equinix.metal_device.access_public_ipv4
}

output "Hell-Access-IPv4" {
  description = "Hell Access IPv4"
  value       = module.hell-equinix.metal_device.access_public_ipv4
}

output "KeystoneAdminPassword" {
  value        = random_password.keystone_admin_password.result
  description  = "Admin Password"
  sensitive    = true
}

output "KeystoneDemoPassword" {
  value        = random_password.keystone_demo_password.result
  description  = "Demo Password"
  sensitive    = true
}
