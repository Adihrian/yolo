terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "~> 0.2.4"
    }
  }
}

provider "virtualbox" {
  # No extra configuration needed for local VirtualBox
}
