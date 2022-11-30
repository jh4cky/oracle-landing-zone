resource "oci_mysql_mysql_db_system" "this" {

  compartment_id = var.compartment_id

  admin_password      = var.admin_password
  admin_username      = var.admin_username
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[var.ad - 1].name
  shape_name          = var.shape_name
  subnet_id           = var.subnet_id
  display_name        = var.display_name
  hostname_label      = var.hostname_label
  is_highly_available = var.is_highly_available
  port                = var.port
  #port_x                  = var.port_x
  data_storage_size_in_gb = var.data_storage_size_in_gb

  # backups
  backup_policy {
    freeform_tags     = merge(var.freeform_tags, var.isv_konfig_ver)
    is_enabled        = var.backup_is_enabled
    retention_in_days = var.backup_retention_days
  }

  freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)
}
