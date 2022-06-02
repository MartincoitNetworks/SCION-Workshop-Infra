
#
# Equinix Metro areas can be found at: 
# https://metal.equinix.com/developers/docs/locations/metros/
#

module "workshop" {
  name                     = "${format("workshop-%02d", count.index +11)}"
  count                    = 3
  metro                    = "DA"
  source                   = "./modules/scion-workshop/"
  project_id               = data.metal_project.scion_project.id
  public_key_str           = local_file.infra_public_key.content
  private_key_str          = local_file.infra_private_key_pem.content
}
