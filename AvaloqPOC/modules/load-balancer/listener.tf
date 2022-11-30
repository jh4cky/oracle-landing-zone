// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


resource "oci_load_balancer_listener" "this" {
  for_each                 = var.listener_params
  default_backend_set_name = oci_load_balancer_backend_set.this.name
  load_balancer_id         = oci_load_balancer_load_balancer.this.id
  name                     = each.value.name
  port                     = each.value.port
  protocol                 = each.value.protocol
  #routing_policy_name      = var.routing_policy_name != "" ? oci_load_balancer_load_balancer_routing_policy.this[var.routing_policy_name].name : null

  ssl_configuration {

    #Optional
    certificate_name        = oci_load_balancer_certificate.this.certificate_name
    cipher_suite_name       = "oci-default-http2-ssl-cipher-suite-v1"
    verify_peer_certificate = false
  }
}