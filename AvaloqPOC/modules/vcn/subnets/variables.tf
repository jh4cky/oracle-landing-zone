# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "The OCID of the compartment to contain the subnet."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the service gateway is attached to."
  type        = string
}

variable "subnet_display_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR IP address range of the subnet."
  type        = string
}

variable "subnet_dns_label" {
  description = "A DNS label for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet"
  type        = string
}

variable "is_subnet_private" {
  description = "Condition to determine whether the subnet is private/public"
  type        = string
  default     = true
}

variable "sl_id" {
  description = "Security list's ID associated with this subnet."
  type        = list(string)
}

variable "rt_id" {
  description = "Route Table ID associated with this subnet."
  type        = string
}


variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple subnets."
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}