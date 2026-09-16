variable "project_id" {
  description = "The ID of the Azure DevOps project in which to create the repository."
  type        = string
}

variable "name" {
  description = "The name of the Git repository."
  type        = string
}

variable "default_branch" {
  description = "The default branch of the repository."
  type        = string
  default     = "refs/heads/main"
}

variable "parent_repository_id" {
  description = "The ID of a repository to fork. Only applicable when init_type is 'Fork'."
  type        = string
  default     = null
}

variable "init_type" {
  description = "How the repository should be initialized. Valid values: 'Clean', 'Fork', 'Import', 'Uninitialized'."
  type        = string
  default     = "Clean"

  validation {
    condition     = contains(["Clean", "Fork", "Import", "Uninitialized"], var.init_type)
    error_message = "init_type must be one of 'Clean', 'Fork', 'Import', or 'Uninitialized'."
  }
}

variable "source_type" {
  description = "The type of source when importing a repository. Only applicable when init_type is 'Import'. Valid value: 'Git'."
  type        = string
  default     = null
}

variable "source_url" {
  description = "The URL of the source repository when importing. Only applicable when init_type is 'Import'."
  type        = string
  default     = null
}

variable "service_connection_id" {
  description = "The ID of the service connection used for private repository imports. Only applicable when init_type is 'Import'."
  type        = string
  default     = null
}

variable "enable_branch_protection" {
  description = "Whether to enable minimum reviewer count branch protection policy."
  type        = bool
  default     = false
}

variable "min_reviewer_count" {
  description = "The minimum number of reviewers required for pull requests on the protected branch."
  type        = number
  default     = 1
}

variable "protected_branch" {
  description = "The branch ref to apply the protection policy to."
  type        = string
  default     = "refs/heads/main"
}
