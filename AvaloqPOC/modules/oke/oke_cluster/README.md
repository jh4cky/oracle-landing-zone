[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
OKE Cluster module  

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
| compartment\_id | Compartment OCID | `string` | n/a | yes |
| kubernetes\_version | Kubernetes version | `string` | n/a | yes |
| cluster\_name | Cluster name | `string` | n/a | yes |
| kms\_key\_id | Kubernetes secret encryption key ID | `string` | n/a | yes |
| vcn\_id | VCN OCID | `string` | n/a | yes |
| enable\_dashboard | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| pvc\_tags | Tags used for PVC | `map(string)` | n/a | yes |
| service\_lb\_tags | Tags used for Service LB | `map(string)` | n/a | yes |
| endpoint\_subnet\_id | OCID of the regional subnet for Cluster endpoint | `string` | n/a | yes |
| endpoint\_nsg\_ids | OCIDs of NSGs for cluster endpoint | `list(string)` | n/a | yes |
| pods\_cidr | CIDR block for Kubernetes pods | `string` | `"10.244.0.0/16"` | no |
| services\_cidr | CIDR block for Kubernetes services | `string` | `"10.96.0.0/16"` | no |
| service\_lb\_subnet\_ids | OCIDs of the subnets used for Kubernetes services load balancers | `list(any)` | n/a | yes |
| endpoint\_type | Whether to allow public or private access to the control plane endpoint | `bool` | `false` | no |
| use\_signed\_images | Whether to enforce the use of signed images. If set to true, at least 1 RSA key must be provided through image\_signing\_keys. | `bool` | `false` | no |
| image\_signing\_keys | A list of KMS key ids used by the worker nodes to verify signed images. The keys must use RSA algorithm. | `list(string)` | `[]` | no |
| freeform\_tags | Free-form tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_id | n/a |
| cluster\_attributes | n/a |
