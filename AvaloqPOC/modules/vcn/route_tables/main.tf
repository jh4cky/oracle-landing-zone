# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

data "oci_core_services" "all_services" {
}

resource "oci_core_route_table" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.rt_display_name

  dynamic "route_rules" {
    iterator = rr
    for_each = var.route_rules

    content {
      network_entity_id = var.network_entity_ids[rr.value.network_entity_name]
      destination       = rr.value.destination_type == "SERVICE_CIDR_BLOCK" ? lookup(data.oci_core_services.all_services.services[0], "cidr_block") : rr.value.destination
      destination_type  = rr.value.destination_type
    }
  }
  freeform_tags = var.freeform_tags
}
