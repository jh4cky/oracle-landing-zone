[![Generic badge](https://img.shields.io/badge/isv_labs-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci-<COLOR>.svg)](https://shields.io/)

## Project Name
OCI User Module

## Description of the module
This modules creates an user in OCI.

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
| compartment\_id | The OCID of the tenancy containing the user. | `string` | n/a | yes |
| description | The description you assign to the user during creation. Does not have to be unique, and it's changeable. | `string` | n/a | yes |
| email | The email you assign to the user. Has to be unique across the tenancy. | `string` | `""` | no |
| freeform\_tags | Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |
| group\_id | The OCID of the group the user is part of. | `string` | n/a | yes |
| name | The name you assign to the user during creation. This is the user's login for the Console. The name must be unique across all users in the tenancy and cannot be changed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
