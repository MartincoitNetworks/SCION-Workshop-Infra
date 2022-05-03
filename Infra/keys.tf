resource "tls_private_key" "ssh_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

locals {
  ssh_key_name = "infra-key"
}

resource "metal_ssh_key" "ssh_pub_key" {
  name       = "ssh_pub_key"
  public_key = chomp(tls_private_key.ssh_key_pair.public_key_openssh)
}

resource "local_file" "infra_private_key_pem" {
  content         = chomp(tls_private_key.ssh_key_pair.private_key_pem)
  filename        = pathexpand(format("%s", local.ssh_key_name))
  file_permission = "0600"
}

resource "local_file" "infra_public_key" {
  content         = chomp(tls_private_key.ssh_key_pair.public_key_openssh)
  filename        = pathexpand(format("%s.pub", local.ssh_key_name))
  file_permission = "0600"
}

