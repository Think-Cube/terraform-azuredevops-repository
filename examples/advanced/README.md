# Example: Advanced — Azure DevOps Git Repository

Import a repository from GitHub and enforce a minimum 2-reviewer policy on the main branch.

```hcl
module "ado_repo" {
  source = "github.com/Think-Cube/terraform-azuredevops-repository?ref=v1.0.0"

  project_id     = "00000000-1111-2222-3333-444444444444"
  name           = "myapp-service"
  default_branch = "refs/heads/main"
  init_type      = "Import"
  source_type    = "Git"
  source_url     = "https://github.com/Think-Cube/myapp-service"

  enable_branch_protection = true
  min_reviewer_count       = 2
  protected_branch         = "refs/heads/main"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ado_repo"></a> [ado\_repo](#module\_ado\_repo) | github.com/Think-Cube/terraform-azuredevops-repository | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
