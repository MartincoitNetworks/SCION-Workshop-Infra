resource "metal_device" "scion-router-dallas" {

  hostname         = "scion-router-dallas"
  plan             = "c3.small.x86"
  metro            = "DA"
  operating_system = "ubuntu_18_04"
  billing_cycle    = "hourly"
  project_id       = data.metal_project.scion_project.id

  user_data       = "#cloud-config\n\nssh_authorized_keys:\n  - \"${local_file.infra_public_key.content}\""

  connection {
    type        = "ssh"
    host        = self.access_public_ipv4
    user        = "root"
    private_key = local_file.infra_private_key_pem.content
  }

  provisioner "file" {
    source      = "install-scion-packages.sh"
    destination = "/tmp/install-scion-packages.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install-scion-packages.sh",
      "/tmp/install-scion-packages.sh",
    ]
  }
}
