
# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# This resource is used to remove all the rules from the default security list
# resource "oci_core_default_security_list" "this" {
#   manage_default_resource_id = var.default_security_list_id
# }

resource "oci_core_security_list" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.security_list_display_name

  dynamic "egress_security_rules" {
    iterator = egress_rules

    for_each = var.egress_rules

    content {
      stateless   = egress_rules.value.stateless
      protocol    = egress_rules.value.protocol
      destination = egress_rules.value.destination

      dynamic "tcp_options" {
        iterator = tcp_options
        for_each = (lookup(egress_rules.value, "tcp_options", null) != null) ? egress_rules.value.tcp_options : []
        content {
          max = tcp_options.value.max
          min = tcp_options.value.min
        }
      }

      dynamic "udp_options" {
        iterator = udp_options
        for_each = (lookup(egress_rules.value, "udp_options", null) != null) ? egress_rules.value.udp_options : []
        content {
          max = udp_options.value.max
          min = udp_options.value.min
        }
      }
    }
  }

  dynamic "ingress_security_rules" {
    iterator = ingress_rules

    for_each = var.ingress_rules

    content {
      stateless   = ingress_rules.value.stateless
      protocol    = ingress_rules.value.protocol
      source      = ingress_rules.value.source
      source_type = ingress_rules.value.source_type

      dynamic "tcp_options" {
        iterator = tcp_options
        for_each = (lookup(ingress_rules.value, "tcp_options", null) != null) ? ingress_rules.value.tcp_options : []
        content {
          max = tcp_options.value.max
          min = tcp_options.value.min
        }
      }

      dynamic "udp_options" {
        iterator = udp_options
        for_each = (lookup(ingress_rules.value, "udp_options", null) != null) ? ingress_rules.value.udp_options : []
        content {
          max = udp_options.value.max
          min = udp_options.value.min
        }
      }
    }
  }

  freeform_tags = var.freeform_tags
}

