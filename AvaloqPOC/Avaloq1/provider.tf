# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

provider "oci" {
  tenancy_ocid     = var.provider_oci.tenancy_ocid
  user_ocid        = var.provider_oci.user_ocid
  fingerprint      = var.provider_oci.fingerprint
  private_key_path = var.provider_oci.private_key_path
  region           = var.provider_oci.region
}

provider "oci" {
  tenancy_ocid     = var.provider_oci.tenancy_ocid
  user_ocid        = var.provider_oci.user_ocid
  fingerprint      = var.provider_oci.fingerprint
  private_key_path = var.provider_oci.private_key_path
  region           = var.provider_oci.region
  home_region      = var.provider_oci.home_region
  alias            = "home"
}