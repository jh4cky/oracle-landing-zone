resource "oci_identity_user" "this" {
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.name
  email          = var.email
  freeform_tags  = var.freeform_tags
}

resource "oci_identity_user_group_membership" "this" {
  user_id  = oci_identity_user.this.id
  group_id = var.group_id
}
