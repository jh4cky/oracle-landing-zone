// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "tenancy_id" {
  description = "Tenancy OCID"
  type        = string
}

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "cluster_id" {
  description = "OCID of the cluster to which this node pool is attached"
  type        = string
}

variable "kms_key_id" {
  description = "The OCID of the Key Management Service key assigned to the boot volume"
  type        = string
  default     = ""
}

variable "encrypt_in_transit" {
  description = "in-transit encryption for the data volume's paravirtualized attachment"
  type        = bool
  default     = false
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key used to accept connections to nodes"
  type        = string
}

variable "pool_name" {
  description = "Name of node pool"
  type        = string
}

variable "subnet_name" {
  description = "OCID of subnet in which to place node"
}

variable "node_nsg_ids" {
  description = "OCIDs of NSG to associate nodes for this node pool"
  type        = list(string)
}

variable "node_shape" {
  description = "Nodes shape"
  type        = string
}

variable "ocpus" {
  description = "Node OCPUs"
  type        = number
}

variable "memory_in_gbs" {
  description = "Node memory in GBs"
  type        = number
}

variable "boot_volume_size" {
  description = "Boot volume in GBs"
  type        = number
  default     = 50
}

variable "image_name" {
  description = "Image name used for nodes"
  type        = string
}

variable "placement_configs" {
  description = "The placement configurations for the node pool"
  type = list(object({
    ad     = number
    subnet = string
  }))
}

variable "subnet_ids" {
  type = map(string)
}

variable "nodes_count" {
  description = "Number of nodes"
  type        = number
  default     = 3
}

variable "eviction_grace_duration" {
  description = "Time in minutes for eviction grace duration (0 will not force delete the nodes). Max 60 mins - ISO 8601"
  type        = number
}

variable "kubernetes_labels" {
  description = "A list of key/value pairs to add to nodes after they join the Kubernetes cluster"
  type        = map(string)
}

variable "node_pool_image_ids" {
  description = "The ocids of a custom image to use for worker node."
  type        = map(string)
}

variable "freeform_tags" {
  description = "Free-form tags"
  type        = map(string)
}