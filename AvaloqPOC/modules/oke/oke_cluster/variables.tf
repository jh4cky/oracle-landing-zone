// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "kms_key_id" {
  description = " Kubernetes secret encryption key ID"
  type        = string
}

variable "vcn_id" {
  description = "VCN OCID"
  type        = string
}

variable "enable_dashboard" {
  description = "Enable Kubernetes Dashboard add-on"
  type        = bool
  default     = false
}

variable "pvc_tags" {
  description = "Tags used for PVC"
  type        = map(string)
}

variable "service_lb_tags" {
  description = "Tags used for Service LB"
  type        = map(string)
}

variable "endpoint_subnet_id" {
  description = "OCID of the regional subnet for Cluster endpoint"
  type        = string
}

variable "endpoint_nsg_ids" {
  description = " OCIDs of NSGs for cluster endpoint"
  type        = list(string)
}


variable "pods_cidr" {
  description = "CIDR block for Kubernetes pods"
  type        = string
  default     = "10.244.0.0/16"
}

variable "services_cidr" {
  description = "CIDR block for Kubernetes services"
  type        = string
  default     = "10.96.0.0/16"
}

variable "service_lb_subnet_ids" {
  description = "OCIDs of the subnets used for Kubernetes services load balancers"
  type        = list(any)
}

variable "endpoint_type" {
  default     = false
  description = "Whether to allow public or private access to the control plane endpoint"
  type        = bool
}

# ## oke cluster container image policy and keys
variable "use_signed_images" {
  description = "Whether to enforce the use of signed images. If set to true, at least 1 RSA key must be provided through image_signing_keys."
  default     = false
  type        = bool
}

variable "image_signing_keys" {
  description = "A list of KMS key ids used by the worker nodes to verify signed images. The keys must use RSA algorithm."
  type        = list(string)
  default     = []
}


variable "freeform_tags" {
  description = "Free-form tags"
  type        = map(string)
}