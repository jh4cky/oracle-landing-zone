// Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "mysql_id" {
  value = oci_mysql_mysql_db_system.this.id
}

output "mysql_attributes" {
  value = oci_mysql_mysql_db_system.this
}
