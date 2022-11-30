// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "vault_display_name" {}

variable "vault_type" {
  default = "DEFAULT"
}

variable "freeform_tags" {
  type = map(string)
}