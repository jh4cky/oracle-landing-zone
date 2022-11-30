# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "igw_id" {
  description = "Dynamic Routing Gateway id"
  value       = oci_core_internet_gateway.this.id
}

output "igw_attributes" {
  description = "Dynamic Routing Gateway attributes"
  value       = oci_core_internet_gateway.this
}