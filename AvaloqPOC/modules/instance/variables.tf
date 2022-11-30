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

variable "image_id" {
  description = "Image OCID"
  type        = string
}

variable "ad" {
  description = "Availability Domain"
  type        = number
}

variable "fd" {
  description = "Fault Domain"
  type        = number
}

variable "instance_shape_config_ocpus" {
  description = "OCPUS Number"
  type        = number
}

variable "instance_shape_config_memory_in_gbs" {
  description = "Memory GB Number"
  type        = number
}



variable "shape" {
  description = "Instance shape"
  type        = string
}

variable "hostname" {
  description = "The hostname for the VNIC's primary private IP"
  type        = string
}

variable "boot_volume_size" {
  description = "The size of the boot volume in GBs"
  type        = number
  default     = 50
}

variable "assign_public_ip" {
  description = "If VNIC should be assigned a public IP"
  type        = bool
}

variable "preserve_boot_volume" {
  description = "Preserve boot volume at instance termination"
  type        = bool
}


variable "subnet_id" {
  description = "Subnet OCID"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key used to accept connections"
  type        = string
}

variable "kms_key_id" {
  description = "Master encryption key OCID for boot volume"
  type        = string
  default     = ""
}

variable "encrypt_in_transit" {
  description = "Enable in-transit encryption for the data volume's"
  type        = bool
  default     = false
}

variable "nsg_ids" {
  description = "List of the OCIDs of the network security groups (NSGs) to add the VNIC"
  type        = list(string)
}

variable "freeform_tags" {
  description = "Free-form tags for this resource"
  type        = map(string)
}
