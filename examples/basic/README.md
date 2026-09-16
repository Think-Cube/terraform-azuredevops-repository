# Example: Terraform Module — Azure DevOps Git Repository

Provisions an `azuredevops_git_repository` with a configurable default branch, initialization type, and optional branch protection policies.

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