// Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
# locals {

output "instance_ids" {
  value = oci_core_instance.this.id
}

output "instance_attributes" {
  value = oci_core_instance.this
}
