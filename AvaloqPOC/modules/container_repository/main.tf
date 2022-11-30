// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_artifacts_container_repository" "this" {
  compartment_id = var.compartment_id
  display_name   = var.ocir_display_name
  is_immutable   = var.ocir_is_immutable
  is_public      = var.ocir_is_public
}