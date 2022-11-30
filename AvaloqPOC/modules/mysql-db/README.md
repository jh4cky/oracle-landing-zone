## Description of the module
Terraform module for creating MySQL instances and HeatWave Clusters.

## Usage
Define all the needed files: 
- variables.tf
- terraform.tfvars (containing the values for the variables)
- main.tf
- provider.tf (containing the configuration of the OCI provider) 

You can use the module by place it for example in /modules/db-mysql path then add the following block of code to create the infrastructure.

```sh
module "db_mysql" {
  source = "./modules/db-mysql"

  compartment_id  = var.provider_oci.compartment_ocid
  subnet_ids = module.network.subnet_ids
  db_params = var.db_params
  audit_config_ids = module.audit.

  freeform_tags = var.freeform_tags
}
```
Example parameters:
```sh
db_params = {
    mysql_heatwave = {
      admin_password           = "test#!12aAS125"
      admin_username           = "gabriel"
      ad                       = 1
      shape_name               = "MySQL.VM.Standard.E3.1.8GB"
      subnet_name              = "isvkonfig"
      display_name             = "mysql_heatwave"
      hostname_label           = "mysqlhw"
      is_highly_available      = false
      port                     = 3306
      port_x                   = 33306
      data_storage_size_in_gb  = 100
      backup_is_enabled        = true
      backup_retention_days    = 16
      audit_config_policy_name = ""
      heatwave_is_enabled      = true
      heatwave_cluster_size    = 2
    },
    mysql_ha = {
      admin_password           = "test#12aAS125"
      admin_username           = "gabriel"
      ad                       = 1
      shape_name               = "MySQL.VM.Standard.E3.1.8GB"
      subnet_name              = "isvkonfig"
      display_name             = "mysql_ha"
      hostname_label           = "mysqlha"
      is_highly_available      = true
      port                     = 3306
      port_x                   = 33306
      data_storage_size_in_gb  = 100
      backup_is_enabled        = false
      backup_retention_days    = 26
      audit_config_policy_name = ""
      heatwave_is_enabled      = false
      heatwave_cluster_size    = 2
    }
}
```

Note that audit policies are also supported out of the box.

## Resources

| Name                                                                                                                                                  | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [oci_mysql_heat_wave_cluster.this](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/mysql_heat_wave_cluster)               | resource    |
| [oci_mysql_mysql_db_system.this](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/mysql_mysql_db_system)                   | resource    |
| [oci_identity_availability_domains.ads](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domains) | data source |

## Inputs

| Name                                                                                   | Description                                                 | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Default                                          | Required |
| -------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ | :------: |
| <a name="input_audit_config_ids"></a> [audit\_config\_ids](#input\_audit\_config\_ids) | Audit configuration IDs key => ocid                         | `map(string)`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | `{}`                                             |    no    |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id)         | ID of the compartment where the resources will be created   | `string`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | n/a                                              |   yes    |
| <a name="input_db_params"></a> [db\_params](#input\_db\_params)                        | Placeholder for the parameters of the instances             | <pre>map(object({<br>    admin_password           = string<br>    admin_username           = string<br>    ad                       = number<br>    shape_name               = string<br>    subnet_name              = string<br>    display_name             = string<br>    hostname_label           = string<br>    is_highly_available      = bool<br>    port                     = number<br>    port_x                   = number<br>    data_storage_size_in_gb  = number<br>    backup_is_enabled        = bool<br>    backup_retention_days    = number<br>    audit_config_policy_name = string<br>    heatwave_is_enabled      = bool<br>    heatwave_cluster_size    = number<br>  }))</pre> | n/a                                              |   yes    |
| <a name="input_freeform_tags"></a> [freeform\_tags](#input\_freeform\_tags)            | Placeholder for the free form tags applied to the resources | `map(string)`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | <pre>{<br>  "Managedby": "Terraform"<br>}</pre>  |    no    |
| <a name="input_isv_konfig_ver"></a> [isv\_konfig\_ver](#input\_isv\_konfig\_ver)       | Placeholder for the module version applied to the resources | `map(string)`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | <pre>{<br>  "isv_konfig_ver": "0.0.1"<br>}</pre> |    no    |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids)                     | Subnet IDs key => ocid                                      | `map(string)`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | n/a                                              |   yes    |

## Outputs

| Name                                                                                                                     | Description                  |
| ------------------------------------------------------------------------------------------------------------------------ | ---------------------------- |
| <a name="output_db_mysql"></a> [db\_mysql](#output\_db\_mysql)                                                           | MySQL DB Systems Info        |
| <a name="output_db_mysql_heatwave_clusters"></a> [db\_mysql\_heatwave\_clusters](#output\_db\_mysql\_heatwave\_clusters) | MySQL HeatWave Clusters Info |
