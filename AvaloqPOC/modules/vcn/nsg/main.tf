# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# nsg
resource "oci_core_network_security_group" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.nsg_display_name
  freeform_tags  = var.freeform_tags
}

# # nsg rules
resource "oci_core_network_security_group_security_rule" "this" {
  for_each                  = var.nsg_rules_params
  network_security_group_id = oci_core_network_security_group.this.id
  protocol                  = each.value.protocol
  stateless                 = each.value.stateless
  direction                 = each.value.direction

  source      = each.value.direction == "INGRESS" ? each.value.source : null
  source_type = each.value.direction == "INGRESS" ? each.value.source_type : null

  destination      = each.value.direction == "EGRESS" ? each.value.destination : null
  destination_type = each.value.direction == "EGRESS" ? each.value.destination_type : null


  dynamic "tcp_options" {
    iterator = tcp_options
    for_each = each.value.tcp_options != null ? each.value.tcp_options : []
    content {
      dynamic "destination_port_range" {
        iterator = destination_ports
        for_each = lookup(tcp_options.value, "destination_ports", null) != null ? tcp_options.value.destination_ports : []
        content {
          min = destination_ports.value.min
          max = destination_ports.value.max
        }
      }
      dynamic "source_port_range" {
        iterator = source_ports
        for_each = lookup(tcp_options.value, "source_ports", null) != null ? tcp_options.value.source_ports : []
        content {
          min = source_ports.value.min
          max = source_ports.value.max
        }
      }
    }
  }

  dynamic "udp_options" {
    iterator = udp_options
    for_each = each.value.udp_options != null ? each.value.udp_options : []
    content {
      dynamic "destination_port_range" {
        iterator = destination_ports
        for_each = lookup(udp_options.value, "destination_ports", null) != null ? udp_options.value.destination_ports : []
        content {
          min = destination_ports.value.min
          max = destination_ports.value.max
        }
      }

      dynamic "source_port_range" {
        iterator = source_ports
        for_each = lookup(udp_options.value, "source_ports", null) != null ? udp_options.value.source_ports : []
        content {
          min = source_ports.value.min
          max = source_ports.value.max
        }
      }
    }
  }
}