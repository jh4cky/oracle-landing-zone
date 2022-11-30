resource "oci_identity_compartment" "compartment" {
  compartment_id = var.parent_compartment_id
  description    = var.description
  name           = var.name
  freeform_tags  = var.freeform_tags
  enable_delete  = var.enable_delete
}
