locals {
  name          = "ecosystem-engineering-catalog"
  yaml_dir      = "${path.module}/yaml"
  layer = "services"
  type  = "base"
  application_branch = "main"
  namespace = "openshift-marketplace"
  layer_config = var.gitops_config[local.layer]
}

resource gitops_module module {
  name = local.name
  namespace = local.namespace
  content_dir = local.yaml_dir
  server_name = var.server_name
  layer = local.layer
  type = local.type
  branch = local.application_branch
  config = yamlencode(var.gitops_config)
  credentials = yamlencode(var.git_credentials)
}
