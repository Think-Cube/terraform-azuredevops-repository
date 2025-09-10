resource "azuredevops_git_repository" "main" {
  project_id = data.azuredevops_project.main.id

  for_each = var.repositories

  name           = each.value.name
  default_branch = try(each.value.default_branch, "main")

  initialization {
    init_type = var.init_type
  }

  lifecycle {
    ignore_changes = [
      initialization,
    ]
  }
}
