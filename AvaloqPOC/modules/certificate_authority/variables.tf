variable "config_type" {
  type        = string
  description = "The origin of the CA."
}

variable "version_name" {
  type        = string
  description = "The name of the CA version. When the value is not null, a name is unique across versions of a given CA."
}

variable "compartment_id" {
  type        = string
  description = "The compartment in which you want to create the CA."
}

variable "kms_key_id" {
  type        = string
  description = "The OCID of the Oracle Cloud Infrastructure Vault key used to encrypt the CA."
}

variable "name" {
  type        = string
  description = "A user-friendly name for the CA. Names are unique within a compartment. Avoid entering confidential information. Valid characters include uppercase or lowercase letters, numbers, hyphens, underscores, and periods."
}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket where the CRL is stored."
}

variable "object_name_format" {
  type        = string
  description = "The object name in the bucket where the CRL is stored, expressed using a format where the version number of the issuing CA is inserted as part of the Object Storage object name wherever you include a pair of curly braces."
}

variable "freeform_tags" {
  type        = map(string)
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  default = {
    Managedby = "Terraform"
  }
  nullable = false
}
