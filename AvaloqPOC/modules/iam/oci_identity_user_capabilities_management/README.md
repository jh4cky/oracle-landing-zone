[![Generic badge](https://img.shields.io/badge/isv_labs-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci-<COLOR>.svg)](https://shields.io/)

## Project Name
OCI User Capabilities Management Module

## Description of the module
This module sets capabilities for an user in OCI.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| oci | >= 4.67.3 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| can\_use\_api\_keys | Indicates if the user can use API keys. | `bool` | `true` | no |
| can\_use\_auth\_tokens | Indicates if the user can use SWIFT passwords / auth tokens. | `bool` | `true` | no |
| can\_use\_console\_password | Indicates if the user can log in to the console. | `bool` | `false` | no |
| can\_use\_customer\_secret\_keys | Indicates if the user can use SigV4 symmetric keys. | `bool` | `false` | no |
| can\_use\_smtp\_credentials | Indicates if the user can use SMTP passwords. | `bool` | `false` | no |
| id | The OCID of the user. | `string` | n/a | yes |

## Outputs

No outputs.
