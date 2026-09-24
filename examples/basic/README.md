<!-- BEGIN_TF_DOCS -->
# Example: Basic — Azuredevops Repository

Provisions an Azure DevOps Git Repository with configurable branch protection policies. Minimal example using required inputs only.

## Usage

```hcl
module "ado_repo" {
  source = "../.."

  project_id     = "00000000-1111-2222-3333-444444444444"
  name           = "my-service"
  default_branch = "refs/heads/main"
  init_type      = "Clean"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ado_repo"></a> [ado\_repo](#module\_ado\_repo) | ../.. | n/a |
<!-- END_TF_DOCS -->