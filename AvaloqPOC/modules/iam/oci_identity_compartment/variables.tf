variable "parent_compartment_id" {
  type        = string
  description = "The OCID of the parent compartment containing the compartment."
}

variable "description" {
  type        = string
  description = "The description you assign to the compartment during creation. Does not have to be unique, and it's changeable."
}

variable "name" {
  type        = string
  description = "he name you assign to the compartment during creation. The name must be unique across all compartments in the parent compartment. Avoid entering confidential information."
}

variable "freeform_tags" {
  type        = map(string)
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  default = {
    Managedby = "Terraform"
  }
  nullable = false
}

variable "enable_delete" {
  type        = bool
  description = "Defaults to false. If omitted or set to false the provider will implicitly import the compartment if there is a name collision, and will not actually delete the compartment on destroy or removal of the resource declaration. If set to true, the provider will throw an error on a name collision with another compartment, and will attempt to delete the compartment on destroy or removal of the resource declaration."
  default     = true
}
