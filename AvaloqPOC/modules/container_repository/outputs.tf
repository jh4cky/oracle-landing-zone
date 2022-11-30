// Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "container_repo_id" {
  value = oci_artifacts_container_repository.this.id
}

output "container_repo_attributes" {
  value = oci_artifacts_container_repository.this
}