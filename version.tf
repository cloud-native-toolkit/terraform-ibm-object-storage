terraform {
  required_version = ">= 0.15.0"

  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = ">= 1.18.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">=3.2.1"
    }
    external = {
      source  = "hashicorp/external"
      version = ">=2.2.3"
    }
  }
}
