data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

data "oci_mysql_shapes" "shapes" {
  #Required
  compartment_id = var.compartment_id

  #Optional
  name = var.shape_name
}
