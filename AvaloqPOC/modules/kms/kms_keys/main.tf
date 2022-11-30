// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


data "oci_kms_vault" "this" {
  #Required
  vault_id = var.vault_id
}

resource "oci_kms_key" "this" {
  compartment_id = var.compartment_id
  display_name   = var.kms_key_name
  key_shape {
    algorithm = var.kms_key_algorithm
    length    = var.kms_key_length

    #Optional
    #curve_id = oci_kms_curve.test_curve.id
  }
  protection_mode     = var.protection_mode
  management_endpoint = data.oci_kms_vault.this.management_endpoint
  freeform_tags       = var.freeform_tags
}