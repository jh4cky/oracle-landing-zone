// Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "cluster_id" {
  value = oci_containerengine_cluster.this.id
}

output "cluster_attributes" {
  value = oci_containerengine_cluster.this
}
