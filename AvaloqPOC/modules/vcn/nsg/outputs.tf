# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "nsg_ids" {
  description = "Network Security Group id"
  value       = oci_core_network_security_group.this.id
}

output "nsg_attributes" {
  description = "Network Security Group attributes"
  value       = oci_core_network_security_group.this
}

output "nsg_rules_attributes" {
  description = "Network Security Group Rules"
  value       = oci_core_network_security_group_security_rule.this
}