// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_vault_secret" "this" {
  compartment_id = var.compartment_id
  vault_id       = var.vault_id
  key_id         = var.kms_key_id
  secret_name    = var.secret_name

  secret_content {
    #Required
    content_type = var.content_type

    #Optional
    content = try(var.secret_content, "")
    name    = try(var.content_name, "")
  }

  secret_rules {
    #Required
    rule_type = "SECRET_REUSE_RULE"

    #Optional
    is_enforced_on_deleted_secret_versions = false
    #is_secret_content_retrieval_blocked_on_expiry = var.secret_secret_rules_is_secret_content_retrieval_blocked_on_expiry
    #secret_version_expiry_interval                = var.secret_secret_rules_secret_version_expiry_interval
    #time_of_absolute_expiry                       = var.secret_secret_rules_time_of_absolute_expiry
  }
  metadata      = var.secret_metadata
  freeform_tags = var.freeform_tags
}