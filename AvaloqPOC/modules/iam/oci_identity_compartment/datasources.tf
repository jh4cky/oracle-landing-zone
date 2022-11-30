data "oci_identity_compartments" "this" {
  compartment_id = var.parent_compartment_id
  state          = "ACTIVE"
  access_level   = "ACCESSIBLE"
}
