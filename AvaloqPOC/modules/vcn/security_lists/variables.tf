# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "The OCID of the compartment to contain the security lists."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the security lists are attached to."
  type        = string
}

variable "default_security_list_id" {
  description = "The security list's OCID"
  type        = string
}

variable "security_list_display_name" {
  description = "Name of the security list."
  type        = string
}

variable "ingress_rules" {
  description = "Ingress security rules for allowing ingress IP packets."
  type = list(object({
    stateless   = string
    protocol    = string
    source      = string
    source_type = string

    tcp_options = list(object({
      min = number
      max = number
    }))

    udp_options = list(object({
      min = number
      max = number
    }))
  }))
  default = []
}

variable "egress_rules" {
  description = "Egress security rules for allowing egress IP packets."
  type = list(object({
    stateless   = string
    protocol    = string
    destination = string
    #destination_type = string   
    tcp_options = list(object({
      min = number
      max = number
    }))
    udp_options = list(object({
      min = number
      max = number
    }))
  }))
  default = []
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple security lists."
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}