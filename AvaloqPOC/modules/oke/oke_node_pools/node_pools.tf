// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

data "oci_identity_availability_domains" "ad_list" {
  compartment_id = var.tenancy_id
}

data "oci_containerengine_node_pool_option" "node_pool_options" {
  node_pool_option_id = var.cluster_id
}

resource "oci_containerengine_node_pool" "this" {
  compartment_id     = var.compartment_id
  cluster_id         = var.cluster_id
  kubernetes_version = var.kubernetes_version
  name               = var.pool_name

  initial_node_labels {
    key   = element(keys(var.kubernetes_labels), 0)
    value = element(values(var.kubernetes_labels), 0)
  }

  node_config_details {
    size                                = var.nodes_count
    kms_key_id                          = try(var.kms_key_id, null)
    nsg_ids                             = var.node_nsg_ids
    is_pv_encryption_in_transit_enabled = var.encrypt_in_transit

    dynamic "placement_configs" {
      iterator = pc
      for_each = var.placement_configs
      content {
        availability_domain = data.oci_identity_availability_domains.ad_list.availability_domains[pc.value.ad - 1].name
        subnet_id           = var.subnet_ids[pc.value.subnet]
      }
    }
  }

  node_eviction_node_pool_settings {
    eviction_grace_duration              = try("PT${var.eviction_grace_duration}M", 0)
    is_force_delete_after_grace_duration = var.eviction_grace_duration == 0 ? false : true
  }

  node_shape = var.node_shape
  node_shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }

  node_source_details {
    boot_volume_size_in_gbs = var.boot_volume_size
    image_id                = var.node_pool_image_ids[var.image_name]
    source_type             = "IMAGE"
  }

  ssh_public_key = file(var.ssh_public_key)
  freeform_tags  = var.freeform_tags
}
