resource "oci_certificates_management_certificate_authority" "this" {
  certificate_authority_config {
    config_type = var.config_type
    subject {}
    validity {}
    version_name = var.version_name
  }

  compartment_id = var.compartment_id
  kms_key_id     = var.kms_key_id
  name           = var.name

  certificate_revocation_list_details {
    object_storage_config {
      object_storage_bucket_name        = var.bucket.name
      object_storage_object_name_format = var.object_name_format
    }
  }
  freeform_tags = var.freeform_tags
}
