# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

resource "oci_core_subnet" "this" {
  cidr_block                 = var.subnet_cidr_block
  display_name               = var.subnet_display_name
  dns_label                  = var.subnet_dns_label
  prohibit_public_ip_on_vnic = var.is_subnet_private
  compartment_id             = var.compartment_id
  vcn_id                     = var.vcn_id
  route_table_id             = var.rt_id
  security_list_ids          = var.sl_id
  freeform_tags              = var.freeform_tags
}