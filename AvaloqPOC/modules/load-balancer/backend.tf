// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


resource "oci_load_balancer_backend_set" "this" {
  health_checker {
    protocol          = var.protocol
    port              = var.port
    url_path          = var.url_path
    interval_ms       = var.interval_ms
    timeout_in_millis = var.timeout_in_millis
    retries           = var.retries
    return_code       = var.return_code
  }

  load_balancer_id = oci_load_balancer_load_balancer.this.id
  name             = var.name
  policy           = var.policy

  ssl_configuration {
    #Optional
    certificate_name        = oci_load_balancer_certificate.this.certificate_name
    cipher_suite_name       = "oci-default-http2-ssl-cipher-suite-v1"
    verify_peer_certificate = false
  }
}

resource "oci_load_balancer_backend" "this" {
  for_each         = var.backend_params
  backendset_name  = oci_load_balancer_backend_set.this.name
  load_balancer_id = oci_load_balancer_load_balancer.this.id
  ip_address       = var.ip_address
  weight           = each.value.weight
  port             = each.value.port
}