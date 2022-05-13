resource "metal_device" "this" {

  hostname         = "controller"
  plan             = "c3.small.x86"
  metro            = "${var.metro}"
  operating_system = "ubuntu_18_04"
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
    content     = data.template_file.CommonServerSetup.rendered
    destination = "CommonServerSetup.sh"
  }

  provisioner "file" {
    content     = data.template_file.ControllerKeystone.rendered
    destination = "ControllerKeystone.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash CommonServerSetup.sh > CommonServerSetup.out",
      "bash ControllerKeystone.sh > ControllerKeystone.out",
    ]
  }
}

resource "random_password" "os_admin_password" {
  length  = 16
  special = false
}

data "template_file" "CommonServerSetup" {
  template = file("${path.module}/templates/CommonServerSetup.sh")

  vars = {
    ADMIN_PASS = random_password.os_admin_password.result
  }
}

data "template_file" "ControllerKeystone" {
  template = file("${path.module}/templates/ControllerKeystone.sh")

  vars = {
    ADMIN_PASS = random_password.os_admin_password.result
  }
}

