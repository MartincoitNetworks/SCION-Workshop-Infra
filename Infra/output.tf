output "ipv4" {
  description = "Device IPv4 Address"
  value       = metal_device.scion.access_public_ipv4
}
