
#
# Equinix Metro areas can be found at: 
# https://metal.equinix.com/developers/docs/locations/metros/
#

module "dallas-equinix" {
  name                     = "dallas-equinix-ffaa-1-f53"
  metro                    = "DA"
  source                   = "./modules/keystone/"
  scion_config_host_id     = "717eeb63249a4479ae0c71bb26b6395c"
  scion_config_host_secret = var.scion-config-host-secret["717eeb63249a4479ae0c71bb26b6395c"]
  project_id               = data.metal_project.scion_project.id
  public_key_str           = local_file.infra_public_key.content
  private_key_str          = local_file.infra_private_key_pem.content
  admin_password           = random_password.keystone_admin_password
  demo_password            = random_password.keystone_demo_password
}

module "amsterdam-equinix" {
  name                     = "amsterdam-equinix-ffaa-1-e98"
  metro                    = "AM"
  source                   = "./modules/keystone/"
  scion_config_host_id     = "7f353e8d547b42969e0d97857e1d2e01"
  scion_config_host_secret = var.scion-config-host-secret["7f353e8d547b42969e0d97857e1d2e01"]
  project_id               = data.metal_project.scion_project.id
  public_key_str           = local_file.infra_public_key.content
  private_key_str          = local_file.infra_private_key_pem.content
  admin_password           = random_password.keystone_admin_password
  demo_password            = random_password.keystone_demo_password
}

module "seoul-equinix" {
  name                     = "seoul-equinix-ffaa-1-f57"
  metro                    = "SL"
  source                   = "./modules/keystone/"
  scion_config_host_id     = "744ff14c716a4ff2ba08caba425b9eff"
  scion_config_host_secret = var.scion-config-host-secret["744ff14c716a4ff2ba08caba425b9eff"]
  project_id               = data.metal_project.scion_project.id
  public_key_str           = local_file.infra_public_key.content
  private_key_str          = local_file.infra_private_key_pem.content
  admin_password           = random_password.keystone_admin_password
  demo_password            = random_password.keystone_demo_password
}

module "hell-equinix" {
  name                     = "hell-equinix-ffaa-1-fa5"
  metro                    = "DA"
  source                   = "./modules/keystone/"
  scion_config_host_id     = "8be7f548f92246ef86639bcc70d29ccc"
  scion_config_host_secret = var.scion-config-host-secret["8be7f548f92246ef86639bcc70d29ccc"]
  project_id               = data.metal_project.scion_project.id
  public_key_str           = local_file.infra_public_key.content
  private_key_str          = local_file.infra_private_key_pem.content
  admin_password           = random_password.keystone_admin_password
  demo_password            = random_password.keystone_demo_password
}
