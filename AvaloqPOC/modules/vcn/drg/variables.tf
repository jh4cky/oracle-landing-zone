# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl
variable "compartment_id" {
  description = "The OCID of the compartment to contain the DRG."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the default DRG route table to be assigned to DRG attachments of type VCN"
  type        = string
}

variable "drg_display_name" {
  description = "Name of the dynamic routing gateway"
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple DRGs"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}