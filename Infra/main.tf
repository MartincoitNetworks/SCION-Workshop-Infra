
#
# Equinix Metro areas can be found at: 
# https://metal.equinix.com/developers/docs/locations/metros/
#



module "dallas-scion-router" {
  name            = "dallas-scion-router"
  metro           = "DA"
  source          = "./modules/scion-router/"
  project_id      = data.metal_project.scion_project.id
  public_key_str  = local_file.infra_public_key.content
  private_key_str = local_file.infra_private_key_pem.content
}

module "dallas-keystone" {
  metro           = "DA"
  source          = "./modules/keystone/"
  project_id      = data.metal_project.scion_project.id
  public_key_str  = local_file.infra_public_key.content
  private_key_str = local_file.infra_private_key_pem.content
  admin_password  = random_password.keystone_admin_password
  demo_password   = random_password.keystone_demo_password
}

module "frankfurt-scion-router" {
  name            = "frankfurt-scion-router"
  metro           = "FR"
  source          = "./modules/scion-router/"
  project_id      = data.metal_project.scion_project.id
  public_key_str  = local_file.infra_public_key.content
  private_key_str = local_file.infra_private_key_pem.content
}

module "frankfurt-keystone" {
  metro           = "FR"
  source          = "./modules/keystone/"
  project_id      = data.metal_project.scion_project.id
  public_key_str  = local_file.infra_public_key.content
  private_key_str = local_file.infra_private_key_pem.content
  admin_password  = random_password.keystone_admin_password
  demo_password   = random_password.keystone_demo_password
}

