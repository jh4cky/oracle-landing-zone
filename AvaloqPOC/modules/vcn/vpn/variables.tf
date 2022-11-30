# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl


variable "cpe_params" {
  description = "Placeholder for the parameters of the virtual customer-premises equipment"
  type = map(object({
    vcn_name         = string
    cpe_display_name = string
    ip_address       = string
    cpe_shape_id     = string
  }))
  default = {}
}

variable "vpn_params" {
  description = "Placeholder for the parameters of the vpn connection"
  type = map(object({
    vcn_name                        = string
    ip_sec_connection_static_routes = list(string)
    ip_sec_connection_display_name  = string
    cpe_name                        = string
    drg_name                        = string
  }))
  default = {}
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}

variable "isv_konfig_ver" {
  description = "Placeholder for the module version applied to the resources"
  type        = map(string)
  default = {
    isv_labs = "0.0.1"
  }
}