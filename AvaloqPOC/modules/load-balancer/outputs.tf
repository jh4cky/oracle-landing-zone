// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "lb_ids" {
  description = "LB OCID"
  value       = oci_load_balancer_load_balancer.this.id
}

output "lb_attributes" {
  description = "LB attributes"
  value       = oci_load_balancer_load_balancer.this
}
