# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "The OCID of the compartment to contain the VCN."
  type        = string
}

variable "vcn_display_name" {
  description = "Name of the VCN."
  type        = string
}

variable "vcn_cidr_blocks" {
  description = "The list of one or more IPv4 CIDR blocks for the VCN."
  type        = list(string)
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within a subnet."
  type        = string
}

variable "enable_ipv6" {
  description = "An IPv6 /56 CIDR block will be assigned to the VCN if enabled."
  type        = string
  default     = false
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple VCNs."
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}