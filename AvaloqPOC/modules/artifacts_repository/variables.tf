// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "artif_display_name" {}

variable "artif_type" {
  type    = string
  default = "GENERIC"
}

variable "artif_is_immutable" {
  type    = bool
  default = false
}

variable "freeform_tags" {
  type = map(string)
}
