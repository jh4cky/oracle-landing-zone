output "id" {
  value = oci_identity_compartment.compartment.id
}

output "compartments" {
  value = data.oci_identity_compartments.this
}
