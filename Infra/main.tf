#module "dallas-scion-router" {
#  name            = "dallas-scion-router"
#  metro           = "DA"
#  source          = "./modules/scion-router/"
#  project_id      = data.metal_project.scion_project.id
#  public_key_str  = local_file.infra_public_key.content
#  private_key_str = local_file.infra_private_key_pem.content
#}

module "dallas-keystone" {
  metro           = "DA"
  source          = "./modules/keystone/"
  project_id      = data.metal_project.scion_project.id
  public_key_str  = local_file.infra_public_key.content
  private_key_str = local_file.infra_private_key_pem.content
}
