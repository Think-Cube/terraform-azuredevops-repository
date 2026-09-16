# Terraform Module — Azure DevOps Git Repository

Provisions an `azuredevops_git_repository` with a configurable default branch, initialization type, and optional branch protection policies.

## Usage

```hcl
module "ado_repo" {
  source = "github.com/Think-Cube/terraform-azuredevops-repository?ref=v1.0.0"

  project_id     = "00000000-1111-2222-3333-444444444444"
  name           = "my-service"
  default_branch = "refs/heads/main"

  initialization = {
    init_type = "Clean"
  }

  enable_branch_protection = true
  min_reviewer_count       = 1
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

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_branch_policy_min_reviewer_count.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_min_reviewer_count) | resource |
| [azuredevops_git_repository.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The default branch of the repository. | `string` | `"refs/heads/main"` | no |
| <a name="input_enable_branch_protection"></a> [enable\_branch\_protection](#input\_enable\_branch\_protection) | Whether to enable minimum reviewer count branch protection policy. | `bool` | `false` | no |
| <a name="input_init_type"></a> [init\_type](#input\_init\_type) | How the repository should be initialized. Valid values: 'Clean', 'Fork', 'Import', 'Uninitialized'. | `string` | `"Clean"` | no |
| <a name="input_min_reviewer_count"></a> [min\_reviewer\_count](#input\_min\_reviewer\_count) | The minimum number of reviewers required for pull requests on the protected branch. | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Git repository. | `string` | n/a | yes |
| <a name="input_parent_repository_id"></a> [parent\_repository\_id](#input\_parent\_repository\_id) | The ID of a repository to fork. Only applicable when init\_type is 'Fork'. | `string` | `null` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the Azure DevOps project in which to create the repository. | `string` | n/a | yes |
| <a name="input_protected_branch"></a> [protected\_branch](#input\_protected\_branch) | The branch ref to apply the protection policy to. | `string` | `"refs/heads/main"` | no |
| <a name="input_service_connection_id"></a> [service\_connection\_id](#input\_service\_connection\_id) | The ID of the service connection used for private repository imports. Only applicable when init\_type is 'Import'. | `string` | `null` | no |
| <a name="input_source_type"></a> [source\_type](#input\_source\_type) | The type of source when importing a repository. Only applicable when init\_type is 'Import'. Valid value: 'Git'. | `string` | `null` | no |
| <a name="input_source_url"></a> [source\_url](#input\_source\_url) | The URL of the source repository when importing. Only applicable when init\_type is 'Import'. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_branch"></a> [default\_branch](#output\_default\_branch) | The default branch of the repository. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Git repository. |
| <a name="output_name"></a> [name](#output\_name) | The name of the created Git repository. |
| <a name="output_remote_url"></a> [remote\_url](#output\_remote\_url) | The HTTPS remote URL of the repository. |
| <a name="output_ssh_url"></a> [ssh\_url](#output\_ssh\_url) | The SSH URL of the repository. |
| <a name="output_web_url"></a> [web\_url](#output\_web\_url) | The web URL of the repository. |
<!-- END_TF_DOCS -->