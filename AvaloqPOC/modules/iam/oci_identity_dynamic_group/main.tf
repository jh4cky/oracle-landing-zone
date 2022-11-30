resource "oci_identity_dynamic_group" "dynamic_group" {
  compartment_id = var.compartment_id
  description    = var.description
  matching_rule  = var.matching_rule
  name           = var.name
  freeform_tags  = var.freeform_tags
}
