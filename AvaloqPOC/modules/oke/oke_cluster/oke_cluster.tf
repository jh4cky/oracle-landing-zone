// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_containerengine_cluster" "this" {
  compartment_id     = var.compartment_id
  kubernetes_version = var.kubernetes_version
  kms_key_id         = try(var.kms_key_id, null)
  name               = var.cluster_name
  vcn_id             = var.vcn_id
  freeform_tags      = var.freeform_tags

  endpoint_config {
    is_public_ip_enabled = var.endpoint_type
    nsg_ids              = var.endpoint_nsg_ids
    subnet_id            = var.endpoint_subnet_id
  }

  options {
    add_ons {
      is_kubernetes_dashboard_enabled = var.enable_dashboard
      is_tiller_enabled               = false
    }

    persistent_volume_config {
      freeform_tags = var.pvc_tags
    }

    kubernetes_network_config {
      pods_cidr     = var.pods_cidr
      services_cidr = var.services_cidr
    }

    service_lb_config {
      freeform_tags = var.service_lb_tags
    }

    service_lb_subnet_ids = var.service_lb_subnet_ids
  }
}