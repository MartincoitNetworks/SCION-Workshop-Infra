resource "equinix_metal_device" "this" {

  hostname         = "${var.name}"
  plan             = "c3.small.x86"
  metro            = "${var.metro}"
  operating_system = "ubuntu_22_04"
  billing_cycle    = "hourly"
  project_id       = "${var.project_id}"

  user_data        = "#cloud-config\n\nssh_authorized_keys:\n  - \"${var.public_key_str}\""

  connection {
    type        = "ssh"
    host        = self.access_public_ipv4
    user        = "root"
    private_key = "${var.private_key_str}"
  }

  provisioner "file" {
    content     = data.template_file.InstallSCION.rendered
    destination = "installSCION.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash installSCION.sh > installSCION.out",
    ]
  }

  provisioner "file" {
    content     = data.template_file.setupWorkshop.rendered
    destination = "setupWorkshop.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash setupWorkshop.sh > setupWorkshop.out",
    ]
  }
}

data "template_file" "InstallSCION" {
  template = file("${path.module}/templates/installSCION.sh")

  vars = {
  }
}

data "template_file" "setupWorkshop" {
  template = file("${path.module}/templates/setupWorkshop.sh")

  vars = {
  }
}
