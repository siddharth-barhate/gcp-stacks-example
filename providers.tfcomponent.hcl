# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 6.34.0"
  }
  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }
}

provider "random" "default" {}

provider "google" "default" {
  config {
    project = var.project_id
    region  = var.region

    external_credentials {
      audience              = var.audience
      service_account_email = var.service_account_email
      identity_token        = var.identity_token
    }
  }
}
