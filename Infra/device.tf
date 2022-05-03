resource "metal_device" "scion" {
  hostname         = "scion"
  plan             = "c3.small.x86"
  metro            = "DA"
  operating_system = "ubuntu_18_04"
  billing_cycle    = "hourly"
  project_id       = data.metal_project.scion_project.id

  connection {
    type        = "ssh"
    user        = "root"
    host        = self.access_public_ipv4
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
