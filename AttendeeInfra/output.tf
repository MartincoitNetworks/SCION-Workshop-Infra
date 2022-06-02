output "Workshop-IPv4" {
  description = "Workshop public IPv4 addresses"
  value       = module.workshop.*.metal_device.access_public_ipv4
}

