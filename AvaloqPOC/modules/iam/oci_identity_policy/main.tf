resource "oci_identity_policy" "policy" {
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.name
  statements     = var.statements
  freeform_tags  = var.freeform_tags
}
