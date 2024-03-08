terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
    }
  }
}

# Credentials for only Equinix Metal resources
provider "equinix" {
  auth_token    = ""
}
