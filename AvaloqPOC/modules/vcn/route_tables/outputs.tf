# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "rt_id" {
  description = "This will output the subnet ids"
  value       = oci_core_route_table.this.id
}

output "rt_attributes" {
  description = "This will output the subnet ids"
  value       = oci_core_route_table.this
}