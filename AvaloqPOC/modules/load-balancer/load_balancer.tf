// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_load_balancer_load_balancer" "this" {
  compartment_id             = var.compartment_id
  display_name               = var.display_name
  shape                      = var.shape
  subnet_ids                 = var.subnet_ids
  ip_mode                    = var.ip_mode
  is_private                 = var.is_private
  network_security_group_ids = var.nsg_ids
  freeform_tags              = var.freeform_tags
}