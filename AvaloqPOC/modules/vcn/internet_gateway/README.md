<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Internet Gateway module


## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| oci | >=4.67.3 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| compartment\_id | The OCID of the compartment to contain the internet gateway. | `string` | n/a | yes |
| vcn\_id | The OCID of the VCN the Internet Gateway is attached to. | `string` | n/a | yes |
| igw\_display\_name | Name of the internet gateway | `string` | n/a | yes |
| freeform\_tags | Free form tags applied to organize and list multiple internet gateways | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| igw\_id | Dynamic Routing Gateway id |
| igw\_attributes | Dynamic Routing Gateway attributes |
<!-- END_TF_DOCS -->