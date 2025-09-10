variable "repositories" {
  description = <<EOT
Map of repositories to create. Each repository can have its own default branch.

Example:
repositories = {
  repo1 = {
    name           = "repo1"
    default_branch = "main"
  }
  repo2 = {
    name           = "repo2"
    default_branch = "master"
  }
}
EOT
  type = map(object({
    name           = string
    default_branch = optional(string)
  }))
}

variable "repo_enabled" {
  description = "Boolean flag to control whether repositories should be created."
  type        = bool
  default     = true
}

variable "init_type" {
  description = <<EOT
Defines how the repository should be initialized:
- Uninitialized: Creates an empty repository
- Clean: Creates a repository with a README
- Import: Imports content from an existing repository
EOT
  type        = string
  default     = "Clean"
}

variable "azuredevops_project" {
  description = "The name of the Azure DevOps project where repositories will be created."
  type        = string
}
