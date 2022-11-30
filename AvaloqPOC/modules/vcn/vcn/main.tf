# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

resource "oci_core_virtual_network" "this" {
  cidr_blocks    = var.vcn_cidr_blocks
  compartment_id = var.compartment_id
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
  freeform_tags  = var.freeform_tags
  is_ipv6enabled = var.enable_ipv6
}