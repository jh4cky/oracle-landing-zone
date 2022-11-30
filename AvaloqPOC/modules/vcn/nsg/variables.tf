# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "The OCID of the compartment to contain the network security group."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the network security group is attached to."
  type        = string
}

variable "nsg_display_name" {
  description = "Name of the network security group"
  type        = string
}

variable "nsg_rules_params" {
  description = "NSG Parameters: protocol, stateless, direction, source, source type, destination, destination type, tcp options, udp options "
  type = map(object({
    #nsg_name         = string
    protocol         = string
    stateless        = string
    direction        = string
    source           = string
    source_type      = string
    destination      = string
    destination_type = string
    tcp_options = list(object({
      destination_ports = list(object({
        min = number
        max = number
      }))
      source_ports = list(object({
        min = number
        max = number
      }))
    }))
    udp_options = list(object({
      destination_ports = list(object({
        min = number
        max = number
      }))
      source_ports = list(object({
        min = number
        max = number
      }))
    }))
  }))
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple network security group"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}