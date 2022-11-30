# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

resource "oci_opensearch_opensearch_cluster" "this" {
  #Required
  compartment_id                     = var.compartment_id
  data_node_count                    = var.data_node_count
  data_node_host_memory_gb           = var.data_node_host_memory_gb
  data_node_host_ocpu_count          = var.data_node_host_ocpu_count
  data_node_host_type                = var.data_node_host_type
  data_node_storage_gb               = var.data_node_storage_gb
  display_name                       = var.display_name
  master_node_count                  = var.master_node_count
  master_node_host_memory_gb         = var.master_node_host_memory_gb
  master_node_host_ocpu_count        = var.master_node_host_ocpu_count
  master_node_host_type              = var.master_node_host_type
  opendashboard_node_count           = var.opendashboard_node_count
  opendashboard_node_host_memory_gb  = var.opendashboard_node_host_memory_gb
  opendashboard_node_host_ocpu_count = var.opendashboard_node_host_ocpu_count
  software_version                   = var.software_version
  subnet_compartment_id              = var.subnet_compartment_id
  subnet_id                          = var.subnet_id
  vcn_compartment_id                 = var.vcn_compartment_id
  vcn_id                             = var.vcn_id

  #Optional
  # data_node_host_bare_metal_shape = var.opensearch_cluster_data_node_host_bare_metal_shape
  # defined_tags = {"foo-namespace.bar-key"= "value"}
  freeform_tags = var.freeform_tags
  # master_node_host_bare_metal_shape = var.opensearch_cluster_master_node_host_bare_metal_shape

}