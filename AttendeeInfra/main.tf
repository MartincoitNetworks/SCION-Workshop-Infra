
#
# Equinix Metro areas can be found at: 
# https://metal.equinix.com/developers/docs/locations/metros/
#

module "workshop" {
  name                     = "${format("%s-%02d", var.metro, count.index +11)}"
  count                    = 2
  metro                    = var.metro
  source                   = "./modules/scion-workshop/"
  project_id               = var.project_id
  public_key_str           = local_file.infra_public_key.content
  private_key_str          = local_file.infra_private_key_pem.content
}
