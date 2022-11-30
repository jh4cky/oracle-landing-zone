[![Generic badge](https://img.shields.io/badge/isv_labs-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci-<COLOR>.svg)](https://shields.io/)

## Project Name
OCI Policy Module

## Description of the module
This module creates a policy in OCI.

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
| compartment\_id | The OCID of the compartment containing the policy (either the tenancy or another compartment). | `string` | n/a | yes |
| description | The description you assign to the policy during creation. Does not have to be unique, and it's changeable. | `string` | n/a | yes |
| freeform\_tags | Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |
| name | The name you assign to the policy during creation. The name must be unique across all policies in the tenancy and cannot be changed. | `string` | n/a | yes |
| statements | An array of policy statements written in the policy language | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
