output "repository_ids" {
  description = "IDs of the created repositories."
  value       = { for k, repo in azuredevops_git_repository.main : k => repo.id }
}

output "repository_names" {
  description = "Names of the created repositories."
  value       = { for k, repo in azuredevops_git_repository.main : k => repo.name }
}

output "repository_branches" {
  description = "Default branches of the created repositories."
  value       = { for k, repo in azuredevops_git_repository.main : k => repo.default_branch }
}

output "repository_urls" {
  description = "Remote URLs of the created repositories."
  value       = { for k, repo in azuredevops_git_repository.main : k => repo.remote_url }
}
