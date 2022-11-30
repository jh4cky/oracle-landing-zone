variable "release_name" {
  type = string
}

variable "chart_name" {
  type = string
}

variable "chart_version" {
  type    = string
  default = null
}

variable "repository" {
  type = string
}

variable "namespace" {
  type    = string
  default = "default"
}
variable "timeout" {
  type = number
}

variable "wait" {
  type    = bool
  default = false
}

variable "force_update" {
  type    = bool
  default = false
}

variable "create_namespace" {
  type    = bool
  default = false
}

variable "values" {
  type    = list(string)
  default = []
}

variable "oci_annotations" {
  type    = map(string)
  default = {}
}

variable "service_annotations" {
  type    = map(string)
  default = {}
}
