# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

resource "oci_core_cpe" "this" {
  for_each = length(var.vpn_params) > 0 ? var.cpe_params : {}

  display_name        = each.value.cpe_display_name
  compartment_id      = oci_core_virtual_network.this[each.value.vcn_name].compartment_id
  ip_address          = each.value.ip_address
  cpe_device_shape_id = each.value.cpe_shape_id

  freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)
}

resource "oci_core_ipsec" "this" {
  for_each = var.vpn_params

  compartment_id = oci_core_virtual_network.this[each.value.vcn_name].compartment_id
  display_name   = each.value.ip_sec_connection_display_name
  cpe_id         = oci_core_cpe.this[each.value.cpe_name].id
  drg_id         = oci_core_drg.this[each.value.drg_name].id
  static_routes  = each.value.ip_sec_connection_static_routes

  freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)
}