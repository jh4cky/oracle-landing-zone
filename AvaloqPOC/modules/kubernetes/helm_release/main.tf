resource "helm_release" "this" {
  name             = var.release_name
  chart            = var.chart_name
  version          = var.chart_version
  repository       = var.repository
  namespace        = var.namespace
  timeout          = var.timeout
  wait             = var.wait
  force_update     = var.force_update
  create_namespace = var.create_namespace
  values           = var.values

  dynamic "set" {
    for_each = var.oci_annotations == null ? {} : var.oci_annotations
    content {
      name  = "controller.service.annotations.oci\\.oraclecloud\\.com/${set.key}"
      value = set.value
    }
  }

  dynamic "set" {
    for_each = var.service_annotations == null ? {} : var.service_annotations
    content {
      name  = "controller.service.annotations.service\\.beta\\.kubernetes\\.io\\/${set.key}"
      value = set.value
    }
  }
}
