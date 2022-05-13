variable "project_id" {
  default     = "NO_EQUINIX_PROJECT_DEFINED"
  description = "Equinix Metal Project to deploy instance"
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

