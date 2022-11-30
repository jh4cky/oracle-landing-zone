// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "vault_id" {}

variable "kms_key_name" {}

variable "kms_key_algorithm" {
  default = "AES"
}

variable "kms_key_length" {
  default = 32
}

variable "protection_mode" {
  type    = string
  default = "SOFTWARE"
  validation {
    condition     = contains(["SOFTWARE", "HSM"], var.protection_mode)
    error_message = "Accepted values are SOFTWARE and HSM."
  }
}

variable "freeform_tags" {
  type = map(string)
}