# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "sgw_id" {
  description = "This will output the Service Gateway id"
  value       = oci_core_service_gateway.this.id
}

output "sgw_attributes" {
  description = "This will output the Service Gateway attributes"
  value       = oci_core_service_gateway.this
}