<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Service Gateway module

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
| compartment\_id | The OCID of the compartment to contain the service gateway. | `string` | n/a | yes |
| vcn\_id | The OCID of the VCN the service gateway is attached to. | `string` | n/a | yes |
| sgw\_display\_name | Name of the service gateway. | `string` | n/a | yes |
| route\_table\_id | Route Table ID associated with this Service Gateway | `string` | `""` | no |
| freeform\_tags | Free form tags applied to organize and list multiple service gateways. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| sgw\_id | This will output the Service Gateway id |
| sgw\_attributes | This will output the Service Gateway attributes |
<!-- END_TF_DOCS -->