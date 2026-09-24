# Example: Advanced — Azuredevops Repository

Provisions an Azure DevOps Git Repository with configurable branch protection policies. Full-featured example with optional configuration blocks enabled.

## Usage

```hcl
# Import an existing public GitHub repo and enforce a 2-reviewer policy on main
module "ado_repo" {
  source = "../.."

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