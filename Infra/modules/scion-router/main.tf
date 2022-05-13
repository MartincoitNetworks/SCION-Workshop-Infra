resource "metal_device" "this" {

  hostname         = "${var.name}"
  plan             = "c3.small.x86"
  metro            = "${var.metro}"
  operating_system = "ubuntu_18_04"
  billing_cycle    = "hourly"
  project_id       = "${var.project_id}"

  user_data       = "#cloud-config\n\nssh_authorized_keys:\n  - \"${var.public_key_str}\""

  connection {
    type        = "ssh"
    host        = self.access_public_ipv4
    user        = "root"
    private_key = "${var.private_key_str}"
  }

  provisioner "file" {
    source      = "${path.module}/install-scion-packages.sh"
    destination = "/tmp/install-scion-packages.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install-scion-packages.sh",
      "/tmp/install-scion-packages.sh",
    ]
  }
}

