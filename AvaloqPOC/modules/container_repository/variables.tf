// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "ocir_display_name" {}

variable "ocir_is_immutable" {
  type    = bool
  default = false
}

variable "ocir_is_public" {
  type    = bool
  default = false
}