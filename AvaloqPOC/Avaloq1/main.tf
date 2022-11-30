# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl


module "instance" {
  source   = "../modules/instance"
  for_each = var.instance_params

  compartment_id = var.compartment_ids[each.value.compartment_name].compartment_id
# compartment_id        = local.compartment_ids[each.value.compartment_name]
  tenancy_id                          = var.provider_oci.tenancy_ocid
  ad                                  = each.value.ad
  fd                                  = each.value.fd
  image_id                            = var.instance_images[each.value.os].image_id
  shape                               = each.value.shape
  instance_shape_config_ocpus         = each.value.instance_shape_config_ocpus
  instance_shape_config_memory_in_gbs = each.value.instance_shape_config_memory_in_gbs
  hostname                            = each.value.hostname
  boot_volume_size                    = each.value.boot_volume_size
  assign_public_ip                    = each.value.assign_public_ip
  preserve_boot_volume                = each.value.preserve_boot_volume
  subnet_id                           = module.subnets[each.value.subnet_name].subnet_id
  ssh_public_key                      = var.ssh_public_key
  kms_key_id                          = each.value.kms_key_id
  encrypt_in_transit                  = each.value.encrypt_in_transit
  nsg_ids                             = [module.ns_groups[each.value.nsg_name].nsg_ids]

  freeform_tags = merge(var.freeform_tags, var.isv_labs)
}


module "vcn" {
  source   = "../modules/vcn/vcn"
  for_each = var.vcn_params

  compartment_id   = var.compartment_ids[each.value.compartment_name].compartment_id
  vcn_cidr_blocks  = each.value.vcn_cidr_blocks # List of IPv4 CIDRs
  vcn_dns_label    = each.value.vcn_dns_label
  vcn_display_name = each.value.vcn_display_name
  enable_ipv6      = each.value.enable_ipv6
  freeform_tags    = merge(var.freeform_tags, var.isv_labs)
}

module "drg" {
  source   = "../modules/vcn/drg"
  for_each = var.drg_params

  drg_display_name = each.value.drg_display_name
  compartment_id   = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  vcn_id           = module.vcn[each.value.vcn_name].vcn_id
  freeform_tags    = merge(var.freeform_tags, var.isv_labs)
}

module "internet_gateway" {
  source   = "../modules/vcn/internet_gateway"
  for_each = var.igw_params

  igw_display_name = each.value.igw_display_name
  compartment_id   = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  vcn_id           = module.vcn[each.value.vcn_name].vcn_id
  freeform_tags    = merge(var.freeform_tags, var.isv_labs)
}

module "service_gateway" {
  source   = "../modules/vcn/service_gateway"
  for_each = var.sgw_params

  sgw_display_name = each.value.sgw_display_name
  compartment_id   = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  vcn_id           = module.vcn[each.value.vcn_name].vcn_id
  freeform_tags    = merge(var.freeform_tags, var.isv_labs)
}

module "nat_gateway" {
  source   = "../modules/vcn/nat_gateway"
  for_each = var.natgw_params

  natgw_display_name = each.value.natgw_display_name
  compartment_id     = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  vcn_id             = module.vcn[each.value.vcn_name].vcn_id
  freeform_tags      = merge(var.freeform_tags, var.isv_labs)
}

module "subnets" {
  source   = "../modules/vcn/subnets"
  for_each = var.subnet_params

  compartment_id      = var.compartment_ids[each.value.compartment_name].compartment_id
  vcn_id              = module.vcn[each.value.vcn_name].vcn_id
  subnet_cidr_block   = each.value.subnet_cidr_block
  subnet_display_name = each.value.subnet_display_name
  subnet_dns_label    = each.value.subnet_dns_label
  is_subnet_private   = each.value.is_subnet_private
  rt_id               = module.route_tables[each.value.rt_name].rt_id
  sl_id               = [module.security_lists[each.value.sl_name].sl_id]
  freeform_tags       = merge(var.freeform_tags, var.isv_labs)
}

module "ns_groups" {
  source   = "../modules/vcn/nsg"
  for_each = var.nsg_params

  nsg_display_name = each.value.display_name
  compartment_id   = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  vcn_id           = module.vcn[each.value.vcn_name].vcn_id
  nsg_rules_params = each.value.nsg_rules_params
  freeform_tags    = merge(var.freeform_tags, var.isv_labs)
}

module "security_lists" {
  source   = "../modules/vcn/security_lists"
  for_each = var.sl_params

  security_list_display_name = each.value.display_name
  compartment_id             = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  default_security_list_id   = module.vcn[each.value.vcn_name].vcn_attributes.default_security_list_id
  vcn_id                     = module.vcn[each.value.vcn_name].vcn_id
  egress_rules               = each.value.egress_rules
  ingress_rules              = each.value.ingress_rules
  freeform_tags              = merge(var.freeform_tags, var.isv_labs)
}

module "route_tables" {
  source   = "../modules/vcn/route_tables"
  for_each = var.rt_params

  rt_display_name    = each.value.rt_display_name
  compartment_id     = module.vcn[each.value.vcn_name].vcn_attributes.compartment_id
  vcn_id             = module.vcn[each.value.vcn_name].vcn_id
  route_rules        = each.value.route_rules
  network_entity_ids = local.network_entity
  freeform_tags      = merge(var.freeform_tags, var.isv_labs)
}



