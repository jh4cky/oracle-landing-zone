// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

locals {
  node_pool_image_ids = data.oci_containerengine_node_pool_option.node_pool_options.sources
}