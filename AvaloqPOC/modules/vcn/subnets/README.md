<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Subnets module

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
| compartment\_id | The OCID of the compartment to contain the subnet. | `string` | n/a | yes |
| vcn\_id | The OCID of the VCN the service gateway is attached to. | `string` | n/a | yes |
| subnet\_display\_name | Name of the subnet. | `string` | n/a | yes |
| subnet\_cidr\_block | The CIDR IP address range of the subnet. | `string` | n/a | yes |
| subnet\_dns\_label | A DNS label for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet | `string` | n/a | yes |
| is\_subnet\_private | Condition to determine whether the subnet is private/public | `string` | `true` | no |
| sl\_id | Security list's ID associated with this subnet. | `list(string)` | n/a | yes |
| rt\_id | n/a | `any` | n/a | yes |
| freeform\_tags | Free form tags applied to organize and list multiple subnets. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| subnet\_id | This will output the subnet id |
| subnets\_attributes | This will output the subnet attributes |
<!-- END_TF_DOCS -->