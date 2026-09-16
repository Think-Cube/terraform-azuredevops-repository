output "id" {
  description = "The ID of the created Git repository."
  value       = azuredevops_git_repository.main.id
}

output "name" {
  description = "The name of the created Git repository."
  value       = azuredevops_git_repository.main.name
}

output "remote_url" {
  description = "The HTTPS remote URL of the repository."
  value       = azuredevops_git_repository.main.remote_url
}

output "ssh_url" {
  description = "The SSH URL of the repository."
  value       = azuredevops_git_repository.main.ssh_url
}

output "web_url" {
  description = "The web URL of the repository."
  value       = azuredevops_git_repository.main.web_url
}

output "default_branch" {
  description = "The default branch of the repository."
  value       = azuredevops_git_repository.main.default_branch
}
