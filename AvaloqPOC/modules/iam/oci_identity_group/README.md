[![Generic badge](https://img.shields.io/badge/isv_labs-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci-<COLOR>.svg)](https://shields.io/)

## Project Name
OCI Group module

## Description of the module
This module creates a group in OCI

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
| compartment\_id | The OCID of the tenancy containing the group. | `string` | n/a | yes |
| description | The description you assign to the group during creation. Does not have to be unique, and it's changeable. | `string` | n/a | yes |
| freeform\_tags | Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |
| name | The name you assign to the group during creation. The name must be unique across all groups in the tenancy and cannot be changed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
