# Toolkit Catalog gitops module

Module to populate a gitops repo with the resources to provision the Toolkit operator catalog in a cluster

The Toolkit Catalog contains operators developed as part of the Cloud-Native Toolkit.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v0.15

### Terraform providers

- IBM Cloud provider >= 1.5.3

## Module dependencies

This module makes use of the output from other modules:

- GitOps - github.com/cloud-native-toolkit/terraform-tools-gitops.git

## Example usage

```hcl-terraform
module "catalog" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-toolkit-catalog.git"

   gitops_config = module.gitops.gitops_config
   git_credentials = module.gitops.git_credentials
   server_name = module.gitops.server_name
}
```
