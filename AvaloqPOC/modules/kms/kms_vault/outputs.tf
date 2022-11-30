// Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "kms_vault_id" {
  value = oci_kms_vault.this.id
}

output "kms_vault_attributes" {
  value = oci_kms_vault.this
}