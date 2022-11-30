variable "compartment_id" {
  type        = string
  description = "The OCID of the tenancy containing the user."
}

variable "description" {
  type        = string
  description = "The description you assign to the user during creation. Does not have to be unique, and it's changeable."
}
variable "name" {
  type        = string
  description = "The name you assign to the user during creation. This is the user's login for the Console. The name must be unique across all users in the tenancy and cannot be changed."
}

variable "email" {
  type        = string
  description = "The email you assign to the user. Has to be unique across the tenancy."
  default     = ""
}

variable "freeform_tags" {
  type        = map(string)
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  default = {
    Managedby = "Terraform"
  }
  nullable = false
}
variable "group_id" {
  type        = string
  description = "The OCID of the group the user is part of."
}
