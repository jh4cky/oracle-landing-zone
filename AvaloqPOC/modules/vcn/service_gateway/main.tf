# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

resource "oci_core_service_gateway" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.sgw_display_name

  services {
    service_id = data.oci_core_services.this.services.0.id # use all services
  }
  route_table_id = var.route_table_id
  freeform_tags  = var.freeform_tags
}