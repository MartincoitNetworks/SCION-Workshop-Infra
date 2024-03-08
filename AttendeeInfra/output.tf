output "Workshop-IPv4" {
  description = "Workshop public IPv4 addresses"
  value       = module.workshop.*.equinix_metal_device.access_public_ipv4
}

