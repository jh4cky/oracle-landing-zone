// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_load_balancer_certificate" "this" {
  #for_each = var.lb_cert_params
  #Required
  certificate_name = var.lb_cert_params.certificate_name
  load_balancer_id = oci_load_balancer_load_balancer.this.id

  # #Optional
  ca_certificate     = file(var.lb_cert_params.ca_certificate)
  private_key        = file(var.lb_cert_params.private_key)
  public_certificate = file(var.lb_cert_params.public_certificate)
  #passphrase         = var.certificate_passphrase

  lifecycle {
    create_before_destroy = true
  }
}