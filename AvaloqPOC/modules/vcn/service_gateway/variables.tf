# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "The OCID of the compartment to contain the service gateway."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the service gateway is attached to."
  type        = string
}

variable "sgw_display_name" {
  description = "Name of the service gateway."
  type        = string
}

variable "route_table_id" {
  description = "Route Table ID associated with this Service Gateway"
  type        = string
  default     = ""
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple service gateways."
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}