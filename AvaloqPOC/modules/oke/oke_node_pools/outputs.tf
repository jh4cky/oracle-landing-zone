// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "node_pool_id" {
  value = oci_containerengine_node_pool.this.id
}

output "node_pool_attributes" {
  value = oci_containerengine_node_pool.this
}
