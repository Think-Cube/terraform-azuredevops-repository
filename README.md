## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 1.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 1.9.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_git_repository.main](https://registry.terraform.io/providers/microsoft/azuredevops/1.9.0/docs/resources/git_repository) | resource |
| [azuredevops_project.main](https://registry.terraform.io/providers/microsoft/azuredevops/1.9.0/docs/data-sources/project) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azuredevops_project"></a> [azuredevops\_project](#input\_azuredevops\_project) | The name of the Azure DevOps project where repositories will be created. | `string` | n/a | yes |
| <a name="input_init_type"></a> [init\_type](#input\_init\_type) | Defines how the repository should be initialized:<br>- Uninitialized: Creates an empty repository<br>- Clean: Creates a repository with a README<br>- Import: Imports content from an existing repository | `string` | `"Clean"` | no |
| <a name="input_repo_enabled"></a> [repo\_enabled](#input\_repo\_enabled) | Boolean flag to control whether repositories should be created. | `bool` | `true` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | Map of repositories to create. Each repository can have its own default branch.<br><br>Example:<br>repositories = {<br>  repo1 = {<br>    name           = "repo1"<br>    default\_branch = "main"<br>  }<br>  repo2 = {<br>    name           = "repo2"<br>    default\_branch = "master"<br>  }<br>} | <pre>map(object({<br>    name           = string<br>    default_branch = optional(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_branches"></a> [repository\_branches](#output\_repository\_branches) | Default branches of the created repositories. |
| <a name="output_repository_ids"></a> [repository\_ids](#output\_repository\_ids) | IDs of the created repositories. |
| <a name="output_repository_names"></a> [repository\_names](#output\_repository\_names) | Names of the created repositories. |
| <a name="output_repository_urls"></a> [repository\_urls](#output\_repository\_urls) | Remote URLs of the created repositories. |
