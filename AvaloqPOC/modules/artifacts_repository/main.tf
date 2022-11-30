// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_artifacts_repository" "this" {
  compartment_id  = var.compartment_id
  display_name    = var.artif_display_name
  repository_type = var.artif_type
  is_immutable    = var.artif_is_immutable
  freeform_tags   = var.freeform_tags
  #Optional
  # defined_tags = {"Operations.CostCenter"= "42"}
  # description = var.repository_description
}