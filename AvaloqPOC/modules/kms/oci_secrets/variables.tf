// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "vault_id" {}

variable "kms_key_id" {}


variable "secret_name" {}

variable "content_type" {
  default = "BASE64"
}

variable "secret_content" {}

variable "content_name" {}

variable "rule_type" {
  type    = string
  default = "SECRET_REUSE_RULE"
  validation {
    condition     = contains(["SECRET_REUSE_RULE", "SECRET_EXPIRY_RULE"], var.rule_type)
    error_message = "Accepted values are SECRET_REUSE_RULE and SECRET_EXPIRY_RULE."
  }
}

variable "is_enforced_on_deleted_secret_versions" {
  type    = bool
  default = true
}

variable "secret_metadata" {
  type    = map(string)
  default = {}
}

variable "freeform_tags" {
  type = map(string)
}