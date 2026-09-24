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