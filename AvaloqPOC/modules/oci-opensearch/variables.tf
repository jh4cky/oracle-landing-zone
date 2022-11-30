# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "ID of the compartment where the resources will be created"
  type        = string

  validation {
    condition     = length(var.compartment_id) > 18 && substr(var.compartment_id, 0, 18) == "ocid1.compartment."
    error_message = "The compartment ID must be a valid OCID, starting with \"ocid1.compartment.\"."
  }
}

variable "data_node_count" {
  type = number
}

variable "data_node_host_memory_gb" {
  type = number

  validation {
    condition     = var.data_node_host_memory_gb >= 32
    error_message = "The Data Node Memory needs to be at least 32 GB."
  }
}

variable "data_node_host_ocpu_count" {
  type = number

  validation {
    condition     = var.data_node_host_ocpu_count >= 2
    error_message = "The Data Node OCPU count needs to be at least 2 ocpus."
  }
}

variable "data_node_storage_gb" {
  type = number
}

variable "data_node_host_type" {
  type = string
}

variable "display_name" {
  type = string
}

variable "master_node_count" {
  type = number
}

variable "master_node_host_memory_gb" {
  type = number
}

variable "master_node_host_ocpu_count" {
  type = number
}

variable "master_node_host_type" {
  type = string
}

variable "opendashboard_node_count" {
  type = number
}

variable "opendashboard_node_host_memory_gb" {
  type = number
}

variable "opendashboard_node_host_ocpu_count" {
  type = number
}


variable "software_version" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "subnet_compartment_id" {
  type = string
}

variable "vcn_id" {
  type = string
}

variable "vcn_compartment_id" {
  type = string
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}