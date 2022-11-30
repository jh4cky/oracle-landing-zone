# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "nat_id" {
  description = "NAT Gateway id"
  value       = oci_core_nat_gateway.this.id
}

output "nat_attributes" {
  description = "NAT Gateway attributes"
  value       = oci_core_nat_gateway.this
}