# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "subnet_id" {
  description = "This will output the subnet id"
  value       = oci_core_subnet.this.id
}

output "subnets_attributes" {
  description = "This will output the subnet attributes"
  value       = oci_core_subnet.this
}