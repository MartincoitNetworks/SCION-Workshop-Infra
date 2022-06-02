variable "project_id" {
  default     = "NO_EQUINIX_PROJECT_DEFINED"
  description = "Equinix Metal Project to deploy instance"
}

variable "name" {
  default     = "controller"
  description = "Hostname to assign to this bare metal device"
}

variable "metro" {
  default     = "DA"
  description = "Equinix Metal Metro (datacenters)"
}

variable "public_key_str" {
  default     = ""
  description = "SSH Authorized Key - Public Key String"
}

variable "private_key_str" {
  default     = ""
  description = "SSH PEM Private Key String"
}

variable "admin_password" {
  default     = "ADMIN_PASSWORD"
  description = "Keystone Admin User Password"
}

variable "demo_password" {
  default     = "DEMO_PASSWORD"
  description = "Keystone Demo User Password"
}

variable "scion_config_host_id" {
  default     = ""
  description = "SCIONLab Config Host ID"
}

variable "scion_config_host_secret" {
  default     = ""
  description = "SCIONLab Config Host Secret"
}
