# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

resource "oci_core_drg" "this" {
  compartment_id = var.compartment_id
  display_name   = var.drg_display_name
  freeform_tags  = var.freeform_tags
}

resource "oci_core_drg_attachment" "this" {
  drg_id = oci_core_drg.this.id
  vcn_id = var.vcn_id
}