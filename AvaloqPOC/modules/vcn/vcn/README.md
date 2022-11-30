<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Virtual Cloud Networks module

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| oci | >=4.78.0 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| compartment\_id | The OCID of the compartment to contain the VCN. | `string` | n/a | yes |
| vcn\_display\_name | Name of the VCN. | `string` | n/a | yes |
| vcn\_cidr\_blocks | The list of one or more IPv4 CIDR blocks for the VCN. | `list(string)` | n/a | yes |
| vcn\_dns\_label | A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within a subnet. | `string` | n/a | yes |
| enable\_ipv6 | An IPv6 /56 CIDR block will be assigned to the VCN if enabled. | `string` | `false` | no |
| freeform\_tags | Free form tags applied to organize and list multiple VCNs. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| vcn\_id | This will output the subnet ids |
| vcn\_attributes | This will output the subnet ids |
<!-- END_TF_DOCS -->