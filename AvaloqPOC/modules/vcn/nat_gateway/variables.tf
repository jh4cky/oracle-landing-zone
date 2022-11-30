# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "The OCID of the compartment to contain the NAT gateway."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the NAT Gateway is attached to."
  type        = string
}

variable "natgw_display_name" {
  description = "Name of the NAT gateway"
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple NAT gateways"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}