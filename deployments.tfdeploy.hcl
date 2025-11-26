# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "gcp" {
  audience = ["hcp.workload.identity"]
}

deployment "asia-south1" {
  inputs = {
    identity_token        = identity_token.gcp.jwt
    audience              = "//iam.googleapis.com/projects/331973328714/locations/global/workloadIdentityPools/wi-pool-gcp-stacks-example/providers/wi-provider-gcp-stacks-example"
    project_id            = "hc-b25b1aa06877440bb41d91b7101"
    service_account_email = "gcp-stacks-example@hc-b25b1aa06877440bb41d91b7101.iam.gserviceaccount.com"
    region                = "asia-south1"
  }
  # destroy = true
}

deployment "europe-west1" {
  inputs = {
    identity_token        = identity_token.gcp.jwt
    audience              = "//iam.googleapis.com/projects/331973328714/locations/global/workloadIdentityPools/wi-pool-gcp-stacks-example/providers/wi-provider-gcp-stacks-example"
    project_id            = "hc-b25b1aa06877440bb41d91b7101"
    service_account_email = "gcp-stacks-example@hc-b25b1aa06877440bb41d91b7101.iam.gserviceaccount.com"
    region                = "europe-west1"
  }
  # destroy = true
}

deployment "us-central1" {
  inputs = {
    identity_token        = identity_token.gcp.jwt
    audience              = "//iam.googleapis.com/projects/331973328714/locations/global/workloadIdentityPools/wi-pool-gcp-stacks-example/providers/wi-provider-gcp-stacks-example"
    project_id            = "hc-b25b1aa06877440bb41d91b7101"
    service_account_email = "gcp-stacks-example@hc-b25b1aa06877440bb41d91b7101.iam.gserviceaccount.com"
    region                = "us-central1"
  }
  # destroy = true
}

