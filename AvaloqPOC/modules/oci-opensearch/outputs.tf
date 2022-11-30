# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "oci_opensearch_cluster_ids" {
  description = "OpenSearch Cluster ID"
  value       = oci_opensearch_opensearch_cluster.this.id
}

output "oci_opensearch_cluster_attributes" {
  description = "OpenSearch Cluster Attributes"
  value       = oci_opensearch_opensearch_cluster.this
}
