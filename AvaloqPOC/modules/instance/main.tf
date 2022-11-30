// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_id
}

resource "oci_core_instance" "this" {
  availability_domain                 = data.oci_identity_availability_domains.ads.availability_domains[var.ad - 1].name
  compartment_id                      = var.compartment_id
  shape                               = var.shape
  display_name                        = var.hostname
  preserve_boot_volume                = var.preserve_boot_volume
  freeform_tags                       = var.freeform_tags
  is_pv_encryption_in_transit_enabled = var.encrypt_in_transit
  fault_domain                        = format("FAULT-DOMAIN-%s", var.fd)

  dynamic "shape_config" {
    for_each = length(regexall("(?i)(flex)", var.shape)) > 0 ? [1] : []
    content {
      memory_in_gbs = var.instance_shape_config_memory_in_gbs
      ocpus         = var.instance_shape_config_ocpus
    }
  }

  create_vnic_details {
    assign_public_ip = var.assign_public_ip
    subnet_id        = var.subnet_id
    hostname_label   = var.hostname
    nsg_ids          = var.nsg_ids
  }

  source_details {
    boot_volume_size_in_gbs = var.boot_volume_size
    source_type             = "image"
    source_id               = var.image_id
    kms_key_id              = try(var.kms_key_id, "")
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key)
    #user_data           = data.template_cloudinit_config.config[var.hostname].rendered
  }
}

